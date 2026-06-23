import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_request.dart';

import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_response.dart';

class AddStockRemoteDataSource {
  final ApiService _apiService;

  AddStockRemoteDataSource(this._apiService);

  Future<AddStockResponse> addStock(AddStockRequest request) {
    return _apiService.addStock(request.toJson());
  }
}
