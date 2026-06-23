import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/stock/data/data_sources/add_stock_remote_data_source.dart';
import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_response.dart';
import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_request.dart';

class AddStockRepo {
  final AddStockRemoteDataSource _remote;
  AddStockRepo(this._remote);

  Future<ApiResult<AddStockResponse>> addStock(AddStockRequest request) async {
    try {
      final response = await _remote.addStock(request);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
