import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';

class LedgerRemoteDataSource {
  final ApiService _apiService;

  LedgerRemoteDataSource(this._apiService);

  Future<LedgerResponse> getLedger() {
    final response = _apiService.getLedger();
    return response;
  }
}
