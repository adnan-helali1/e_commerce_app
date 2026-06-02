import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/offers/data/models/offers_response.dart';

abstract class OffersRepo {
  Future<OffersResponse?> getCachedOffers();

  Future<DateTime?> getCachedOffersAt();

  bool shouldRefreshOffers(DateTime? cachedAt);

  Future<ApiResult<OffersResponse>> getOffers({
    required int page,
    required int category,
    required String status,
    required String search,
    bool forceRefresh = false,
  });

  Future<void> clearOffers();
}
