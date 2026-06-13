import 'package:bloc/bloc.dart';
import 'package:B2B/app/features/orders/data/models/active_offer_item.dart';
import 'create_order_state.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  CreateOrderCubit() : super(const CreateOrderState());

  /// ✅ تحديث الكمية مع validation
  void updateQuantity(
    int offerId,
    int quantity,
    List<ActiveOfferItem> offers,
  ) {
    // ✅ ابحث عن الـ offer عشان تجيب الـ stock
    final offer = offers.firstWhere((o) => o.id == offerId);

    // ✅ تحقق من الـ quantity
    final error = _validateQuantity(quantity, offer.stock);

    final updatedQuantities = {...state.quantities};
    updatedQuantities[offerId] = quantity;

    final updatedErrors = {...state.quantityErrors};
    updatedErrors[offerId] = error; // ✅ خزّن الخطأ أو null

    emit(
      state.copyWith(
        quantities: updatedQuantities,
        quantityErrors: updatedErrors,
        totalPrice: error == null
            ? _calculateTotalWithOffers(updatedQuantities, offers)
            : state.totalPrice, // ✅ لا تحدّث الإجمالي إذا في خطأ
      ),
    );
  }

  /// ✅ دالة الـ validation
  String? _validateQuantity(int quantity, int maxStock) {
    if (quantity <= 0) {
      return 'Must be a positive number';
    }

    if (quantity > maxStock) {
      return 'Max stock: $maxStock';
    }

    return null; // ✅ بدون خطأ
  }

  /// ✅ تحديث الـ selection
  void toggleOfferSelection(int offerId, bool isSelected) {
    final updatedSelections = {...state.selectedOffers};
    updatedSelections[offerId] = isSelected;

    emit(
      state.copyWith(
        selectedOffers: updatedSelections,
      ),
    );
  }

  /// ✅ تحديث الملاحظة
  void updateNote(String note) {
    emit(state.copyWith(note: note));
  }

  /// ✅ حساب الإجمالي
  double _calculateTotalWithOffers(
    Map<int, int> quantities,
    List<ActiveOfferItem> offers,
  ) {
    double total = 0;

    for (final offer in offers) {
      if (!(state.selectedOffers[offer.id] ?? true)) continue;

      final quantity = quantities[offer.id] ?? 1;
      total += quantity * offer.buyPrice;
    }

    return total;
  }

  /// ✅ الحصول على الـ selected IDs
  List<int> getSelectedOfferIds() {
    return state.selectedOffers.entries
        .where((e) => e.value)
        .map((e) => e.key)
        .toList();
  }

  /// ✅ تحقق من أن جميع الـ quantities صحيحة
  bool hasValidationErrors() {
    return state.quantityErrors.values.any((error) => error != null);
  }

  /// ✅ الحصول على رسائل الأخطاء
  String? getQuantityError(int offerId) {
    return state.quantityErrors[offerId];
  }

  /// ✅ reset الـ state
  void reset() {
    emit(const CreateOrderState());
  }
}
