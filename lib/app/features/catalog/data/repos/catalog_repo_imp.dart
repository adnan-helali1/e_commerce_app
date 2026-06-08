import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/data_sources/catalog_local_data_source.dart';
import 'package:B2B/app/features/catalog/data/data_sources/catalog_remote_data_source.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:B2B/app/features/catalog/data/repos/catalog_repo.dart';

class CatalogRepoImpl implements CatalogRepo {
  final CatalogLocalDataSource _local;
  final CatalogRemoteDataSource _remote;

  final Set<String> _activeRequests = {};

  CatalogRepoImpl(this._local, this._remote);

  String _key(int page, bool? isActive, int perPage) =>
      '$page-${isActive ?? 'all'}-$perPage';

  /// 🔥 LOCAL
  Future<CatalogResponse?> _getCache(
    int page,
    bool? isActive,
    int perPage,
  ) async {
    final cached = await _local.read(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );

    return cached?.toResponse();
  }

  Future<DateTime?> _getCacheTime(
    int page,
    bool? isActive,
    int perPage,
  ) async {
    final cached = await _local.read(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );

    return cached?.cachedAt;
  }

  bool _shouldRefresh(DateTime? cachedAt) {
    if (cachedAt == null) return true;

    return DateTime.now().difference(cachedAt) >= CacheKeys.homeDashboardTtl;
  }

  /// 🔥 MAIN API
  @override
  Future<ApiResult<CatalogResponse>> getCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
    bool forceRefresh = false,
  }) async {
    final key = _key(page, isActive, perPage);

    try {
      final cached = await _getCache(page, isActive, perPage);
      final cachedAt = await _getCacheTime(page, isActive, perPage);

      final shouldRefresh = _shouldRefresh(cachedAt);

      /// ✅ 1. Local First (instant UI)
      if (cached != null && !forceRefresh) {
        /// 🔥 background refresh
        if (shouldRefresh && !_activeRequests.contains(key)) {
          _refreshInBackground(page, isActive, perPage, key);
        }

        return ApiResult.success(cached);
      }

      /// ✅ 2. Prevent duplicate calls
      if (_activeRequests.contains(key)) {
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _activeRequests.add(key);

      /// ✅ 3. Remote call
      final response = await _remote.getCatalog(
        page: page,
        isActive: isActive,
        perPage: perPage,
      );

      /// ✅ 4. Cache it
      final cacheModel = CatalogCacheModel.fromResponse(response);

      await _local.save(
        cacheModel,
        page: page,
        isActive: isActive,
        perPage: perPage,
      );

      return ApiResult.success(response);
    } catch (error) {
      /// ✅ fallback to cache
      final cached = await _getCache(page, isActive, perPage);

      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    } finally {
      _activeRequests.remove(key);
    }
  }

  /// 🔥 BACKGROUND SYNC
  Future<void> _refreshInBackground(
    int page,
    bool? isActive,
    int perPage,
    String key,
  ) async {
    try {
      _activeRequests.add(key);

      final response = await _remote.getCatalog(
        page: page,
        isActive: isActive,
        perPage: perPage,
      );

      final cacheModel = CatalogCacheModel.fromResponse(response);

      await _local.save(
        cacheModel,
        page: page,
        isActive: isActive,
        perPage: perPage,
      );
    } catch (_) {
      /// ignore background errors
    } finally {
      _activeRequests.remove(key);
    }
  }

  /// 🔥 CLEAR
  @override
  Future<void> clearCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
  }) async {
    await _local.clear(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );
  }

  /// 🔥 CACHE HELPERS
  @override
  Future<CatalogResponse?> getCachedCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
  }) =>
      _getCache(page, isActive, perPage);

  @override
  Future<DateTime?> getCachedCatalogAt({
    required int page,
    required bool? isActive,
    required int perPage,
  }) =>
      _getCacheTime(page, isActive, perPage);

  @override
  bool shouldRefreshCatalog(DateTime? cachedAt) => _shouldRefresh(cachedAt);
}
