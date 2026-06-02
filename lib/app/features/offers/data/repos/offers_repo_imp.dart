import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/offers/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/offers/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/offers/data/models/offers_cache_model.dart';
import 'package:B2B/app/features/offers/data/models/offers_response.dart';
import 'package:B2B/app/features/offers/data/repos/offers_repo.dart';

class OffersRepoImpl implements OffersRepo {
  final OffersLocalDataSource _local;
  final OffersRemoteDataSource _remote;

  bool _isFetching = false;

  OffersRepoImpl(this._local, this._remote);

  @override
  Future<OffersResponse?> getCachedOffers({
    required int page,
    required int category,
    required String status,
    required String search,
  }) async {
    final cached = await _local.read(
      page: page,
      category: category,
      status: status,
      search: search,
    );
    return cached?.toResponse();
  }

  @override
  Future<void> clearOffers({
    required int page,
    required int category,
    required String status,
    required String search,
  }) async {
    await _local.clear(
      page: page,
      category: category,
      status: status,
      search: search,
    );
  }

  @override
  Future<DateTime?> getCachedOffersAt({
    required int page,
    required int category,
    required String status,
    required String search,
  }) async {
    final cached = await _local.read(
      page: page,
      category: category,
      status: status,
      search: search,
    );

    return cached?.cachedAt;
  }

  @override
  bool shouldRefreshOffers(DateTime? cachedAt) {
    if (cachedAt == null) return true;

    return DateTime.now().difference(cachedAt) >= CacheKeys.homeDashboardTtl;
  }

  @override
  Future<ApiResult<OffersResponse>> getOffers({
    required int page,
    required int category,
    required String status,
    required String search,
    bool forceRefresh = false,
  }) async {
    try {
      // 🧠 1. رجّع الكاش فوراً إذا موجود
      if (!forceRefresh) {
        final cached = await getCachedOffers(
          page: page,
          category: category,
          status: status,
          search: search,
        );
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      // 🧠 2. منع duplicate calls
      if (_isFetching) {
        final cached = await getCachedOffers(
          page: page,
          category: category,
          status: status,
          search: search,
        );
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _isFetching = true;

      // 🌐 API CALL
      final response = await _remote.getOffers(
        page,
        category,
        status,
        search,
      );

      // 💾 CACHE
      final cacheModel = OffersCacheModel.fromResponse(response);
      await _local.save(
        cacheModel,
        page: page,
        category: category,
        status: status,
        search: search,
      );
      return ApiResult.success(response);
    } catch (error) {
      // 🧠 fallback للكاش
      final cached = await getCachedOffers(
        page: page,
        category: category,
        status: status,
        search: search,
      );
      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(ErrorHandler.handle(error));
    } finally {
      _isFetching = false;
    }
  }
}
