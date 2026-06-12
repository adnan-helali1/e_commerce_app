import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/data_sources/get_catalog/catalog_local_data_source.dart';
import 'package:B2B/app/features/catalog/data/data_sources/get_catalog/catalog_remote_data_source.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:B2B/app/features/catalog/data/repos/get_catalog/catalog_repo.dart';

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
    String search,
  ) async {
    final cached = await _local.read(
      search: search,
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
    String search,
  ) async {
    final cached = await _local.read(
      search: search,
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
    required String search,
    required int page,
    required bool? isActive,
    required int perPage,
    bool forceRefresh = false,
  }) async {
    final key = _key(page, isActive, perPage);

    try {
      final cached = await _getCache(page, isActive, perPage, search);
      final cachedAt = await _getCacheTime(page, isActive, perPage, search);

      final shouldRefresh = _shouldRefresh(cachedAt);

      /// ✅ 1. Local First (instant UI)
      if (cached != null && !forceRefresh) {
        /// 🔥 background refresh
        if (shouldRefresh && !_activeRequests.contains(key)) {
          _refreshInBackground(page, isActive, perPage, key, search);
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
        search: search,
      );

      /// ✅ 4. Cache it
      final cacheModel = CatalogCacheModel.fromResponse(response);

      await _local.save(
        cacheModel,
        page: page,
        isActive: isActive,
        perPage: perPage,
        search: search,
      );

      return ApiResult.success(response);
    } catch (error) {
      /// ✅ fallback to cache
      final cached = await _getCache(page, isActive, perPage, search);

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
    String search,
  ) async {
    try {
      _activeRequests.add(key);

      final response = await _remote.getCatalog(
        page: page,
        isActive: isActive,
        perPage: perPage,
        search: search,
      );

      final cacheModel = CatalogCacheModel.fromResponse(response);

      await _local.save(
        cacheModel,
        search: search,
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
    required String search,
    required int page,
    required bool? isActive,
    required int perPage,
  }) async {
    await _local.clear(
      search: search,
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
    required String search,
  }) =>
      _getCache(page, isActive, perPage, search);

  @override
  Future<DateTime?> getCachedCatalogAt({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) =>
      _getCacheTime(page, isActive, perPage, search);

  @override
  bool shouldRefreshCatalog(DateTime? cachedAt) => _shouldRefresh(cachedAt);

  @override
  Future<ApiResult<void>> patchCatalogItem({
    required int catalogId,
    required double sellPrice,
    required bool isActive,
  }) async {
    try {
      await _remote.patchCatalogItem(
        catalogId: catalogId,
        sellPrice: sellPrice,
        isActive: isActive,
      );

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }

  @override
  Future<ApiResult<void>> deleteCatalogItem({
    required int catalogId,
  }) async {
    try {
      await _remote.deleteCatalogItem(
        catalogId: catalogId,
      );

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
