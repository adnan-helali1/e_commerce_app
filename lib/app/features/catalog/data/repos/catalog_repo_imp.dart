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

  @override
  Future<CatalogResponse?> getCachedCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
  }) async {
    final cached = await _local.read(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );

    return cached?.toResponse();
  }

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

  @override
  Future<DateTime?> getCachedCatalogAt({
    required int page,
    required bool? isActive,
    required int perPage,
  }) async {
    final cached = await _local.read(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );

    return cached?.cachedAt;
  }

  @override
  bool shouldRefreshCatalog(DateTime? cachedAt) {
    if (cachedAt == null) return true;

    return DateTime.now().difference(cachedAt) >= CacheKeys.homeDashboardTtl;
  }

  @override
  Future<ApiResult<CatalogResponse>> getCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
    bool forceRefresh = false,
  }) async {
    final requestKey = '$page-${isActive ?? 'all'}-$perPage';

    try {
      if (!forceRefresh) {
        final cached = await getCachedCatalog(
          page: page,
          isActive: isActive,
          perPage: perPage,
        );

        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      if (_activeRequests.contains(requestKey)) {
        final cached = await getCachedCatalog(
          page: page,
          isActive: isActive,
          perPage: perPage,
        );

        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _activeRequests.add(requestKey);

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

      return ApiResult.success(response);
    } catch (error) {
      final cached = await getCachedCatalog(
        page: page,
        isActive: isActive,
        perPage: perPage,
      );

      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    } finally {
      _activeRequests.remove(requestKey);
    }
  }
}
