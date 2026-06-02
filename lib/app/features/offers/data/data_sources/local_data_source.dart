import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/offers/data/models/offers_cache_model.dart';

class OffersLocalDataSource {
  final CacheDataSource<OffersCacheModel> _cache;

  OffersLocalDataSource(this._cache);

  Future<OffersCacheModel?> read({
    required int page,
    required int category,
    required String status,
    required String search,
  }) {
    final key = buildOffersCacheKey(
      page: page,
      category: category,
      status: status,
      search: search,
    );

    return _cache.read(
      boxKey: CacheKeys.offersBox,
      dataKey: key,
      fromJson: OffersCacheModel.fromJson,
    );
  }

  Future<void> save(
    OffersCacheModel model, {
    required int page,
    required int category,
    required String status,
    required String search,
  }) {
    final key = buildOffersCacheKey(
      page: page,
      category: category,
      status: status,
      search: search,
    );

    return _cache.save(
      boxKey: CacheKeys.offersBox,
      dataKey: key,
      data: model.toJson(),
    );
  }

  Future<void> clear({
    required int page,
    required int category,
    required String status,
    required String search,
  }) {
    final key = buildOffersCacheKey(
      page: page,
      category: category,
      status: status,
      search: search,
    );

    return _cache.clear(
      boxKey: CacheKeys.offersBox,
      dataKey: key,
    );
  }
}
