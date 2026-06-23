import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/stock/data/models/get_stock/get_stock_response.dart';

class GetStockRemoteDataSource {
  final ApiService _apiService;

  GetStockRemoteDataSource(this._apiService);

  Future<GetStockResponse> getStock() {
    return _apiService.getStock();
  }
}
