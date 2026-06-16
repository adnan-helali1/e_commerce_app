import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';

class GetOrdersRemoteDataSource {
  final ApiService _apiService;

  GetOrdersRemoteDataSource(this._apiService);

  Future<OrdersResponse> getOrders({
    required int perPage,
    required String status,
  }) {
    return _apiService.getOrders(status, perPage);
  }

  Future<void> deleteOrder({
    required int orderId,
  }) {
    return _apiService.cancelOrder(orderId);
  }
}
