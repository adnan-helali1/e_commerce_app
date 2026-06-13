import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_create_order_state.freezed.dart';

@freezed
abstract class UiCreateOrderState with _$UiCreateOrderState {
  const factory UiCreateOrderState({
    @Default({}) Map<int, bool> selectedOffers,
    @Default({}) Map<int, int> quantities,
    @Default({}) Map<int, String?> quantityErrors, // ✅ نمخزن الأخطاء هنا
    @Default(0) double totalPrice,
    @Default('') String note,
  }) = _CreateOrderState;
}
