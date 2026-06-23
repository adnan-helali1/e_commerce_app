import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_cache_model.dart';

class GetStockLocalDataSource {
  final CacheDataSource<GetStockCacheModel> _cache;

  GetStockLocalDataSource(this._cache);

  Future<GetStockCacheModel?> read() {
    final key = buildGetStockCacheKey();

    return _cache.read(
      boxKey: CacheKeys.stockBox,
      dataKey: key,
      fromJson: GetStockCacheModel.fromJson,
    );
  }

  Future<void> save(GetStockCacheModel model) {
    final key = buildGetStockCacheKey();

    return _cache.save(
      boxKey: CacheKeys.stockBox,
      dataKey: key,
      data: model.toJson(),
    );
  }

  Future<void> clear() {
    final key = buildGetStockCacheKey();

    return _cache.clear(
      boxKey: CacheKeys.stockBox,
      dataKey: key,
    );
  }
}
