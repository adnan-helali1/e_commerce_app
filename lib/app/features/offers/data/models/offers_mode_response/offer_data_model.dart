import 'package:B2B/app/features/offers/data/models/offers_mode_response/supplier_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'offer_data_model.g.dart';
part 'offer_data_model.freezed.dart';

@freezed
abstract class OfferData with _$OfferData {
  const factory OfferData({
    required int id,
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    @JsonKey(name: 'offer_price') required String offerPrice,
    @JsonKey(name: 'offer_stock') required int offerStock,
    required String status,
    @JsonKey(name: 'expires_at') required DateTime expiresAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'supplier_product') required SupplierProduct supplierProduct,
  }) = _OfferData;

  factory OfferData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OfferDataFromJson(json);
}
