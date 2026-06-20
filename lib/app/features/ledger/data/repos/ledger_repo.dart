import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';

abstract class LedgerRepo {
  Future<LedgerResponse?> getCachedLedger({required int page});

  Future<DateTime?> getCachedLedgerAt({required int page});

  Future<void> clearLedger({required int page});

  bool shouldRefreshLedger(DateTime? cachedAt);

  Future<ApiResult<LedgerResponse>> getLedger({
    required int page,
    bool forceRefresh = false,
  });
}
