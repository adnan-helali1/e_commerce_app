import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/profile/data/models/profile_cache_model.dart';

class ProfileLocalDataSource {
  final CacheDataSource<ProfileCacheModel> _cache;

  ProfileLocalDataSource(this._cache);

  Future<ProfileCacheModel?> read() {
    return _cache.read(
      boxKey: CacheKeys.profileBox,
      dataKey: 'store_profile',
      fromJson: ProfileCacheModel.fromJson,
    );
  }

  Future<void> save(
    ProfileCacheModel model,
  ) {
    return _cache.save(
      boxKey: CacheKeys.profileBox,
      dataKey: 'store_profile',
      data: model.toJson(),
    );
  }

  Future<void> clear() {
    return _cache.clear(
      boxKey: CacheKeys.profileBox,
      dataKey: 'store_profile',
    );
  }
}
