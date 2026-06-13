import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_offer_item.freezed.dart';
part 'active_offer_item.g.dart';

@freezed
abstract class ActiveOfferItem with _$ActiveOfferItem {
  const factory ActiveOfferItem({
    required int id,
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
  }) = _ActiveOfferItem;

  factory ActiveOfferItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActiveOfferItemFromJson(json);
}
