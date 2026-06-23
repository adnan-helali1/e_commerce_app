import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_stock_state.freezed.dart';

@freezed
class AddStockState with _$AddStockState {
  const factory AddStockState.initial() = _Initial;

  const factory AddStockState.loading() = _Loading;

  const factory AddStockState.success(
    AddStockResponse response,
  ) = _Success;

  const factory AddStockState.failure({
    required String error,
  }) = _Failure;
}
