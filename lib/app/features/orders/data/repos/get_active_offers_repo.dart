import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/orders/data/models/active_offers_response.dart';
import 'package:B2B/app/features/orders/data/data_sources/get_active_offers_remote_datasource.dart';

class GetActiveOffersRepo {
  final GetActiveOffersRemoteDatasource _remote;
  GetActiveOffersRepo(this._remote);

  Future<ApiResult<ActiveOffersResponse>> getActiveOffers() async {
    try {
      final response = await _remote.getActiveOffers();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
