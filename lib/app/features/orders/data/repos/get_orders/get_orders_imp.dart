import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/orders/data/data_sources/get_orders/get_orders_local_data_source.dart';
import 'package:B2B/app/features/orders/data/data_sources/get_orders/get_orders_remote_data_source.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/cache/orders_cache_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:B2B/app/features/orders/data/repos/get_orders/get_orders_repo.dart';

class OrdersRepoImpl implements OrdersRepo {
  final OrdersLocalDataSource _local;
  final GetOrdersRemoteDataSource _remote;

  final Set<String> _activeRequests = {};

  OrdersRepoImpl(this._local, this._remote);

  @override
  Future<OrdersResponse?> getCachedOrders({
    required String status,
    required int perPage,
  }) async {
    final cached = await _local.read(
      status: status,
      perPage: perPage,
    );
    return cached?.toResponse();
  }

  @override
  Future<void> clearOrders({
    required String status,
    required int perPage,
  }) async {
    await _local.clear(
      status: status,
      perPage: perPage,
    );
  }

  @override
  Future<DateTime?> getCachedOrdersAt({
    required String status,
    required int perPage,
  }) async {
    final cached = await _local.read(
      status: status,
      perPage: perPage,
    );
    return cached?.cachedAt;
  }

  @override
  bool shouldRefreshOrders(DateTime? cachedAt) {
    if (cachedAt == null) return true;
    return DateTime.now().difference(cachedAt) >= CacheKeys.homeDashboardTtl;
  }

  @override
  Future<ApiResult<OrdersResponse>> getOrders({
    required String status,
    required int perPage,
    bool forceRefresh = false,
  }) async {
    final requestKey = '$status-$perPage';
    try {
      // 🧠 1. رجّع الكاش فوراً إذا موجود
      if (!forceRefresh) {
        final cached = await getCachedOrders(
          status: status,
          perPage: perPage,
        );
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      // 🧠 2. منع duplicate calls
      if (_activeRequests.contains(requestKey)) {
        final cached = await getCachedOrders(
          status: status,
          perPage: perPage,
        );
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _activeRequests.add(requestKey);

      // 🌐 API CALL
      final response = await _remote.getOrders(
        status: status,
        perPage: perPage,
      );

      // 💾 CACHE
      final cacheModel = OrdersCacheModel.fromResponse(response);
      await _local.save(
        cacheModel,
        status: status,
        perPage: perPage,
      );

      return ApiResult.success(response);
    } catch (error) {
      // 🧠 fallback للكاش
      final cached = await getCachedOrders(
        status: status,
        perPage: perPage,
      );
      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(ErrorHandler.handle(error));
    } finally {
      _activeRequests.remove(requestKey);
    }
  }

  @override
  Future<ApiResult<void>> deleteOrder({
    required int orderId,
  }) async {
    try {
      await _remote.deleteOrder(
        orderId: orderId,
      );

      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
