import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';

abstract class CatalogRepo {
  Future<CatalogResponse?> getCachedCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
  });

  Future<DateTime?> getCachedCatalogAt({
    required int page,
    required bool? isActive,
    required int perPage,
  });

  Future<void> clearCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
  });

  bool shouldRefreshCatalog(DateTime? cachedAt);

  Future<ApiResult<CatalogResponse>> getCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
    bool forceRefresh = false,
  });
}
