import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/home/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/home/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeLocalDataSource _localDataSource;
  final HomeRemoteDataSource _remoteDataSource;
  bool _isFetching = false;

  HomeRepoImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<HomeDashboardResponse?> getCachedHomeDashboard() async {
    debugPrint('[HomeRepo] getCachedHomeDashboard -> reading local cache');
    final cached = await _localDataSource.readHomeDashboard();
    debugPrint(
      '[HomeRepo] getCachedHomeDashboard -> ${cached == null ? 'MISS' : 'HIT'}',
    );
    return cached?.toDashboardResponse();
  }

  @override
  Future<void> clearHomeDashboard() async {
    debugPrint('[HomeRepo] clearHomeDashboard -> clearing local cache');
    await _localDataSource.clearHomeDashboard();
    debugPrint('[HomeRepo] clearHomeDashboard -> done');
  }

  @override
  Future<DateTime?> getCachedHomeDashboardAt() async {
    final cached = await _localDataSource.readHomeDashboard();
    debugPrint('[HomeRepo] getCachedHomeDashboardAt -> ${cached?.cachedAt}');
    return cached?.cachedAt;
  }

  @override
  bool shouldRefreshHomeDashboard(DateTime? cachedAt) {
    if (cachedAt == null) {
      debugPrint('[HomeRepo] shouldRefreshHomeDashboard -> true (no cachedAt)');
      return true;
    }

    final shouldRefresh =
        DateTime.now().difference(cachedAt) >= CacheKeys.homeDashboardTtl;
    debugPrint(
      '[HomeRepo] shouldRefreshHomeDashboard -> $shouldRefresh (cachedAt: $cachedAt, ttl: ${CacheKeys.homeDashboardTtl})',
    );
    return shouldRefresh;
  }

  @override
  Future<ApiResult<HomeDashboardResponse>> getHomeDashboard({
    bool forceRefresh = false,
  }) async {
    try {
      debugPrint('[HomeRepo] getHomeDashboard(forceRefresh: $forceRefresh)');

      if (!forceRefresh) {
        final cached = await getCachedHomeDashboard();
        if (cached != null) {
          debugPrint(
              '[HomeRepo] getHomeDashboard -> return cached immediately');
          return ApiResult.success(cached);
        }
      }

      if (_isFetching) {
        debugPrint(
            '[HomeRepo] getHomeDashboard -> already fetching, trying cached fallback');
        final cached = await getCachedHomeDashboard();
        if (cached != null) {
          debugPrint(
              '[HomeRepo] getHomeDashboard -> return cached while in-flight');
          return ApiResult.success(cached);
        }
      }

      _isFetching = true;
      debugPrint('[HomeRepo] getHomeDashboard -> requesting remote data');
      final response = await _remoteDataSource.getHomeDashboard();
      final cacheModel = HomeDashboardCacheModel.fromDashboard(response);
      await _localDataSource.saveHomeDashboard(cacheModel);
      debugPrint(
          '[HomeRepo] getHomeDashboard -> remote success, cache updated');
      return ApiResult.success(response);
    } catch (error) {
      debugPrint('HomeRepoImpl getHomeDashboard error: $error');

      final cached = await getCachedHomeDashboard();
      if (cached != null) {
        debugPrint('[HomeRepo] getHomeDashboard -> error fallback to cache');
        return ApiResult.success(cached);
      }

      debugPrint('[HomeRepo] getHomeDashboard -> error with no cache fallback');
      return ApiResult.failure(ErrorHandler.handle(error));
    } finally {
      _isFetching = false;
      debugPrint('[HomeRepo] getHomeDashboard -> fetch lock released');
    }
  }
}
