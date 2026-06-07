import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/offers/data/models/offers_response.dart';

class OffersRemoteDataSource {
  final ApiService _apiService;

  OffersRemoteDataSource(this._apiService);

  Future<OffersResponse> getOffers(
    int page,
    int category,
    String status,
    String search,
  ) {
    return _apiService.getOffers(page, category, status, search);
  }
}
