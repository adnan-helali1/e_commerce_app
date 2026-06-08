// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemCacheModel _$CatalogItemCacheModelFromJson(
        Map<String, dynamic> json) =>
    CatalogItemCacheModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      supplierName: json['supplierName'] as String,
      buyPrice: (json['buyPrice'] as num).toDouble(),
      sellPrice: (json['sellPrice'] as num).toDouble(),
      profitPerUnit: (json['profitPerUnit'] as num).toDouble(),
      profitPercentage: (json['profitPercentage'] as num).toDouble(),
      stock: (json['stock'] as num).toInt(),
      totalProfit: (json['totalProfit'] as num).toDouble(),
      isActive: json['isActive'] as bool,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$CatalogItemCacheModelToJson(
        CatalogItemCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'supplierName': instance.supplierName,
      'buyPrice': instance.buyPrice,
      'sellPrice': instance.sellPrice,
      'profitPerUnit': instance.profitPerUnit,
      'profitPercentage': instance.profitPercentage,
      'stock': instance.stock,
      'totalProfit': instance.totalProfit,
      'isActive': instance.isActive,
      'imageUrl': instance.imageUrl,
    };
