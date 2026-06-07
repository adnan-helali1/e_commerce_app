import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_request_body.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_response.dart';

class AddOfferRemoteDataSource {
  final ApiService _apiService;

  AddOfferRemoteDataSource(this._apiService);

  Future<AddOfferResponse> addOffer(
    int supplierProductId,
    AddOfferRequestBody body,
  ) {
    return _apiService.addOfferToCatalog(
      supplierProductId,
      body,
    );
  }
}
