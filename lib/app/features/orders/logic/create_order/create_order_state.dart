import 'package:B2B/app/features/orders/data/models/create_order/create_order_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_state.freezed.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;

  const factory CreateOrderState.loading() = _Loading;

  const factory CreateOrderState.success(
    CreateOrderResponse response,
  ) = _Success;

  const factory CreateOrderState.failure({
    required String error,
  }) = _Failure;
}
