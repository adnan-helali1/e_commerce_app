import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/home/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/home/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeLocalDataSource _localDataSource;
  final HomeRemoteDataSource _remoteDataSource;
  bool _isFetching = false;

  HomeRepoImpl(this._localDataSource, this._remoteDataSource);

// get the cached dashboard, if available and not expired
  @override
  Future<HomeDashboardResponse?> getCachedHomeDashboard() async {
    final cached = await _localDataSource.read();
    return cached?.toDashboardResponse();
  }

// clear the cached dashboard
  @override
  Future<void> clearHomeDashboard() async {
    await _localDataSource.clear();
  }

// get the timestamp of when the dashboard was cached
  @override
  Future<DateTime?> getCachedHomeDashboardAt() async {
    final cached = await _localDataSource.read();
    return cached?.cachedAt;
  }

// determine if we should refresh the dashboard based on the cache timestamp
  @override
  bool shouldRefreshHomeDashboard(DateTime? cachedAt) {
    if (cachedAt == null) {
      return true;
    }

    final shouldRefresh =
        DateTime.now().difference(cachedAt) >= CacheKeys.homeDashboardTtl;

    return shouldRefresh;
  }

// main method to get the dashboard, with optional force refresh
  @override
  Future<ApiResult<HomeDashboardResponse>> getHomeDashboard({
    bool forceRefresh = false,
  }) async {
    try {
      if (!forceRefresh) {
        final cached = await getCachedHomeDashboard();
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      if (_isFetching) {
        final cached = await getCachedHomeDashboard();
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _isFetching = true;
      final response = await _remoteDataSource.getHomeDashboard();
      final cacheModel = HomeDashboardCacheModel.fromDashboard(response);
      await _localDataSource.save(cacheModel);

      return ApiResult.success(response);
    } catch (error) {
      final cached = await getCachedHomeDashboard();
      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(ErrorHandler.handle(error));
    } finally {
      _isFetching = false;
    }
  }
}
