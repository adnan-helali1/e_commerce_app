import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/offers/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_request_body.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_response.dart';
import 'package:B2B/app/features/offers/data/repos/add_offer_to_cataolg_repo/add_offer_repo.dart';

class AddOfferRepoImpl implements AddOfferRepo {
  final AddOfferRemoteDataSource _remote;

  AddOfferRepoImpl(this._remote);

  @override
  Future<ApiResult<AddOfferResponse>> addOffer({
    required int supplierProductId,
    required AddOfferRequestBody body,
  }) async {
    try {
      final response = await _remote.addOffer(
        supplierProductId,
        body,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
