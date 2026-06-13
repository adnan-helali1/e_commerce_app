import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
abstract class CatalogItem with _$CatalogItem {
  const factory CatalogItem({
    required int id,
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    required String name,
    @JsonKey(name: 'supplier_name') required String supplierName,
    @JsonKey(name: 'buy_price') required double buyPrice,
    @JsonKey(name: 'sell_price') required double sellPrice,
    @JsonKey(name: 'profit_per_unit') required double profitPerUnit,
    @JsonKey(name: 'profit_percentage') required double profitPercentage,
    required int stock,
    @JsonKey(name: 'total_profit') required double totalProfit,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _CatalogItem;

  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);
}
