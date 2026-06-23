import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/stock/data/data_sources/get_stock_local_data_source.dart';
import 'package:B2B/app/features/stock/data/data_sources/get_stock_remote_data_source.dart';
import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_cache_model.dart';
import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_response.dart';
import 'package:B2B/app/features/stock/data/repos/get_stock/get_stock_repo.dart';

class GetStockRepoImpl implements GetStockRepo {
  final GetStockLocalDataSource _local;
  final GetStockRemoteDataSource _remote;

  final Set<String> _activeRequests = {};

  GetStockRepoImpl(this._local, this._remote);

  // ---------------------------------------------------------------------------
  // Cache helpers
  // ---------------------------------------------------------------------------

  @override
  Future<GetStockResponse?> getCachedStock() async {
    final cached = await _local.read();
    return cached?.toResponse();
  }

  @override
  Future<DateTime?> getCachedStockAt() async {
    final cached = await _local.read();
    return cached?.cachedAt;
  }

  @override
  Future<void> clearStock() async {
    await _local.clear();
  }

  @override
  bool shouldRefreshStock(DateTime? cachedAt) {
    if (cachedAt == null) return true;
    return DateTime.now().difference(cachedAt) >= CacheKeys.stockTtl;
  }

  // ---------------------------------------------------------------------------
  // Main fetch
  // ---------------------------------------------------------------------------

  @override
  Future<ApiResult<GetStockResponse>> getStock({
    bool forceRefresh = false,
  }) async {
    const requestKey = 'get_stock';

    try {
      // 🧠 1. Return cache immediately if available and not forcing refresh
      if (!forceRefresh) {
        final cached = await getCachedStock();
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      // 🧠 2. Prevent duplicate in-flight requests
      if (_activeRequests.contains(requestKey)) {
        final cached = await getCachedStock();
        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _activeRequests.add(requestKey);

      // 🌐 API call
      final response = await _remote.getStock();

      // 💾 Cache the result
      final cacheModel = GetStockCacheModel.fromResponse(response);
      await _local.save(cacheModel);

      return ApiResult.success(response);
    } catch (error) {
      // 🧠 Fallback to cache on error
      final cached = await getCachedStock();
      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(ErrorHandler.handle(error));
    } finally {
      _activeRequests.remove(requestKey);
    }
  }
}
