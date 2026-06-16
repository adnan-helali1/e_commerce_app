import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';

abstract class OrdersRepo {
  Future<OrdersResponse?> getCachedOrders({
    required String status,
    required int perPage,
  });

  Future<DateTime?> getCachedOrdersAt({
    required String status,
    required int perPage,
  });

  Future<void> clearOrders({
    required String status,
    required int perPage,
  });

  bool shouldRefreshOrders(DateTime? cachedAt);

  Future<ApiResult<OrdersResponse>> getOrders({
    required String status,
    required int perPage,
    bool forceRefresh = false,
  });

  Future<ApiResult<void>> deleteOrder({
    required int orderId,
  });
}
