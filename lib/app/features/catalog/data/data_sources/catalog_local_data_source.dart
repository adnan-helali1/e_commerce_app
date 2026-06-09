import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_cache_model.dart';

class CatalogLocalDataSource {
  final CacheDataSource<CatalogCacheModel> _cache;

  CatalogLocalDataSource(this._cache);

  Future<CatalogCacheModel?> read({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) {
    final key = buildCatalogCacheKey(
      page: page,
      isActive: isActive,
      perPage: perPage,
      search: search,
    );

    return _cache.read(
      boxKey: CacheKeys.catalogBox,
      dataKey: key,
      fromJson: CatalogCacheModel.fromJson,
    );
  }

  Future<void> save(
    CatalogCacheModel model, {
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) {
    final key = buildCatalogCacheKey(
      page: page,
      isActive: isActive,
      perPage: perPage,
      search: search,
    );

    return _cache.save(
      boxKey: CacheKeys.catalogBox,
      dataKey: key,
      data: model.toJson(),
    );
  }

  Future<void> clear({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) {
    final key = buildCatalogCacheKey(
      page: page,
      isActive: isActive,
      perPage: perPage,
      search: search,
    );

    return _cache.clear(
      boxKey: CacheKeys.catalogBox,
      dataKey: key,
    );
  }
}
