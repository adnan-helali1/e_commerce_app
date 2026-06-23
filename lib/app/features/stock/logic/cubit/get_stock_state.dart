import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_stock_state.freezed.dart';

@freezed
class GetStockState with _$GetStockState {
  const factory GetStockState.initial() = _Initial;

  const factory GetStockState.loading() = _Loading;

  const factory GetStockState.success(
    GetStockResponse response,
  ) = _Success;

  const factory GetStockState.failure({
    required String error,
  }) = _Failure;
}
