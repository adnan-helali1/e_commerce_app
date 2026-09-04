import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/products/data/data_sources/store_products_remote_data_source.dart';
import 'package:B2B/app/features/products/data/models/store_product_response.dart';

class StoreProductsRepo {
  const StoreProductsRepo(this._remote);

  final StoreProductsRemoteDataSource _remote;

  Future<ApiResult<StoreProductsResponse>> getProducts({int page = 1}) async {
    try {
      return ApiResult.success(await _remote.getProducts(page: page));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<StoreProductDetailResponse>> getProduct(int id) async {
    try {
      return ApiResult.success(await _remote.getProduct(id));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
