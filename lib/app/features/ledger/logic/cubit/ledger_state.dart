import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_state.freezed.dart';

@freezed
class LedgerState with _$LedgerState {
  const factory LedgerState.initial() = _Initial;

  const factory LedgerState.loading() = _Loading;

  const factory LedgerState.success(
    LedgerResponse response,
  ) = _Success;

  const factory LedgerState.failure({
    required String error,
  }) = _Failure;
}
