import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_request.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_response.dart';

class CreateOrderRemoteDataSource {
  final ApiService _apiService;

  CreateOrderRemoteDataSource(this._apiService);

  Future<CreateOrderResponse> createOrder(CreateOrderRequest request) {
    return _apiService.createOrder(request);
  }
}
