import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_request.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_response.dart';
import 'package:B2B/app/features/orders/data/data_sources/create_order_remote_data_source.dart';

class CreateOrderRepo {
  final CreateOrderRemoteDataSource _remote;
  CreateOrderRepo(this._remote);

  Future<ApiResult<CreateOrderResponse>> createOrder(
      CreateOrderRequest request) async {
    try {
      final response = await _remote.createOrder(request);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
