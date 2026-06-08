import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';

class CatalogRemoteDataSource {
  final ApiService _apiService;

  CatalogRemoteDataSource(this._apiService);

  Future<CatalogResponse> getCatalog({
    required int page,
    bool? isActive,
    int perPage = 15,
  }) {
    return _apiService.getCatalog(
      page,
      isActive,
      perPage,
    );
  }
}
