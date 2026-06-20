import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_filter_bar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_state.freezed.dart';

@freezed
class LedgerState with _$LedgerState {
  const factory LedgerState.initial() = _Initial;

  const factory LedgerState.loading() = _Loading;

// ledger_state.dart
  const factory LedgerState.success(
    LedgerResponse response, {
    @Default(LedgerFilter.all)
    LedgerFilter filter, // now part of equality check
  }) = _Success;

  const factory LedgerState.failure({
    required String error,
  }) = _Failure;
}
