import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;

  const factory OrdersState.loading() = _Loading;

  const factory OrdersState.success(
    OrdersResponse response,
  ) = _Success;

  const factory OrdersState.failure({
    required String error,
  }) = _Failure;
}
