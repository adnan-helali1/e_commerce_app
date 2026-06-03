import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';

class HomeLocalDataSource {
  final CacheDataSource<HomeDashboardCacheModel> _cache;

  HomeLocalDataSource(this._cache);

  Future<HomeDashboardCacheModel?> read() {
    return _cache.read(
      boxKey: CacheKeys.homeBox,
      dataKey: CacheKeys.homeDashboard,
      fromJson: HomeDashboardCacheModel.fromJson,
    );
  }

  Future<void> save(HomeDashboardCacheModel model) {
    return _cache.save(
      boxKey: CacheKeys.homeBox,
      dataKey: CacheKeys.homeDashboard,
      data: model.toJson(),
    );
  }

  Future<void> clear() {
    return _cache.clear(
      boxKey: CacheKeys.homeBox,
      dataKey: CacheKeys.homeDashboard,
    );
  }
}
