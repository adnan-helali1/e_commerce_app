import 'package:B2B/app/features/offers/data/models/offers_model_response/supplier_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
abstract class CatalogItem with _$CatalogItem {
  const factory CatalogItem({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    @JsonKey(name: 'sell_price') required String sellPrice,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'supplier_product') required SupplierProduct supplierProduct,
  }) = _CatalogItem;

  factory CatalogItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogItemFromJson(json);
}
