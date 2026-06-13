import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/cache/orders_cache_model.dart';

class OrdersLocalDataSource {
  final CacheDataSource<OrdersCacheModel> _cache;

  OrdersLocalDataSource(this._cache);

  Future<OrdersCacheModel?> read({required int page}) {
    final key = _buildKey(page: page);

    return _cache.read(
      boxKey: CacheKeys.ordersBox,
      dataKey: key,
      fromJson: OrdersCacheModel.fromJson,
    );
  }

  Future<void> save(OrdersCacheModel model, {required int page}) {
    final key = _buildKey(page: page);

    return _cache.save(
      boxKey: CacheKeys.ordersBox,
      dataKey: key,
      data: model.toJson(),
    );
  }

  Future<void> clear({required int page}) {
    final key = _buildKey(page: page);

    return _cache.clear(
      boxKey: CacheKeys.ordersBox,
      dataKey: key,
    );
  }

  String _buildKey({required int page}) => 'orders_page_$page';
}
