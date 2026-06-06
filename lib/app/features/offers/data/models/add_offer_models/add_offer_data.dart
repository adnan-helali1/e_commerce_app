import 'package:B2B/app/features/offers/data/models/offers_model_response/supplier_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_offer_data.freezed.dart';
part 'add_offer_data.g.dart';

@freezed
abstract class AddOfferData with _$AddOfferData {
  const factory AddOfferData({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'sell_price') required String sellPrice,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'supplier_product') required SupplierProduct supplierProduct,
  }) = _AddOfferData;

  factory AddOfferData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AddOfferDataFromJson(json);
}
