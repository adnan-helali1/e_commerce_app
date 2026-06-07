import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_request_body.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_response.dart';

abstract class AddOfferRepo {
  AddOfferRepo(Object object);

  Future<ApiResult<AddOfferResponse>> addOffer({
    required int supplierProductId,
    required AddOfferRequestBody body,
  });
}
