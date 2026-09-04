import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/products/data/models/store_product_response.dart';

class StoreProductsRemoteDataSource {
  const StoreProductsRemoteDataSource(this._api);

  final ApiService _api;

  Future<StoreProductsResponse> getProducts({int page = 1}) =>
      _api.getStoreProducts(page);

  Future<StoreProductDetailResponse> getProduct(int id) =>
      _api.getStoreProduct(id);
}
