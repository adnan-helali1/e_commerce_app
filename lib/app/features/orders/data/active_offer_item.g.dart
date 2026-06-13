// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models/active_offer_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActiveOfferItem _$ActiveOfferItemFromJson(Map<String, dynamic> json) =>
    _ActiveOfferItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      supplierName: json['supplier_name'] as String,
      buyPrice: (json['buy_price'] as num).toDouble(),
      sellPrice: (json['sell_price'] as num).toDouble(),
      profitPerUnit: (json['profit_per_unit'] as num).toDouble(),
      profitPercentage: (json['profit_percentage'] as num).toDouble(),
      stock: (json['stock'] as num).toInt(),
      totalProfit: (json['total_profit'] as num).toDouble(),
      isActive: json['is_active'] as bool,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$ActiveOfferItemToJson(_ActiveOfferItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'supplier_name': instance.supplierName,
      'buy_price': instance.buyPrice,
      'sell_price': instance.sellPrice,
      'profit_per_unit': instance.profitPerUnit,
      'profit_percentage': instance.profitPercentage,
      'stock': instance.stock,
      'total_profit': instance.totalProfit,
      'is_active': instance.isActive,
      'image_url': instance.imageUrl,
    };
