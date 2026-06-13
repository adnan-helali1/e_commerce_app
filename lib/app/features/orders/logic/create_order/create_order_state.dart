import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_state.freezed.dart';

@freezed
abstract class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState({
    @Default({}) Map<int, bool> selectedOffers,
    @Default({}) Map<int, int> quantities,
    @Default({}) Map<int, String?> quantityErrors, // ✅ نمخزن الأخطاء هنا
    @Default(0) double totalPrice,
    @Default('') String note,
  }) = _CreateOrderState;
}
