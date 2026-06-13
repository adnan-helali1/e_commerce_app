import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offers_response.dart';

class GetActiveOffersRemoteDatasource {
  final ApiService _apiService;

  GetActiveOffersRemoteDatasource(this._apiService);

  Future<ActiveOffersResponse> getActiveOffers() {
    return _apiService.getActiveOffers();
  }
}
