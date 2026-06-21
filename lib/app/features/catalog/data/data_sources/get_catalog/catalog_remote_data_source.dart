import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/patch_catalog_request.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';

class CatalogRemoteDataSource {
  final ApiService _apiService;

  CatalogRemoteDataSource(this._apiService);

  Future<CatalogResponse> getCatalog({
    required int page,
    bool? isActive,
    int perPage = 15,
    required String search,
  }) {
    return _apiService.getCatalog(
      page,
      isActive,
      perPage,
      search,
    );
  }

  Future<void> patchCatalogItem({
    required int catalogId,
    required PatchCatalogRequest request,
  }) {
    return _apiService.patchCatalogItem(
      catalogId,
      request.toJson(),
    );
  }

  Future<void> deleteCatalogItem({
    required int catalogId,
  }) {
    return _apiService.deleteCatalogItem(catalogId);
  }
}
