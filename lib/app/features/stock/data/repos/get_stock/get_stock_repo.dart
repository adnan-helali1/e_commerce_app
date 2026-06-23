import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/stock/data/models/get_stock/get_stock_response.dart';

abstract class GetStockRepo {
  Future<GetStockResponse?> getCachedStock();

  Future<DateTime?> getCachedStockAt();

  Future<void> clearStock();

  bool shouldRefreshStock(DateTime? cachedAt);

  Future<ApiResult<GetStockResponse>> getStock({
    bool forceRefresh = false,
  });
}
