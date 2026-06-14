import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/cache/orders_cache_model.dart';

class OrdersLocalDataSource {
  final CacheDataSource<OrdersCacheModel> _cache;

  OrdersLocalDataSource(this._cache);

  Future<OrdersCacheModel?> read({
    required int perPage,
    required String status,
  }) {
    final key = _buildKey(perPage: perPage, status: status);

    return _cache.read(
      boxKey: CacheKeys.ordersBox,
      dataKey: key,
      fromJson: OrdersCacheModel.fromJson,
    );
  }

  Future<void> save(
    OrdersCacheModel model, {
    required int perPage,
    required String status,
  }) {
    final key = _buildKey(perPage: perPage, status: status);

    return _cache.save(
      boxKey: CacheKeys.ordersBox,
      dataKey: key,
      data: model.toJson(),
    );
  }

  Future<void> clear({
    required int perPage,
    required String status,
  }) {
    final key = _buildKey(perPage: perPage, status: status);

    return _cache.clear(
      boxKey: CacheKeys.ordersBox,
      dataKey: key,
    );
  }

  String _buildKey({required int perPage, required String status}) =>
      'orders_perPage_${perPage}_status_$status';
}
