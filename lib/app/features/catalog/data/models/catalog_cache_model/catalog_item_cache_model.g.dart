// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemCacheModel _$CatalogItemCacheModelFromJson(
        Map<String, dynamic> json) =>
    CatalogItemCacheModel(
      id: (json['id'] as num?)?.toInt(),
      storeId: (json['storeId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      supplierProductId: (json['supplierProductId'] as num?)?.toInt(),
      sellPrice: json['sellPrice'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      supplierProduct: json['supplierProduct'] == null
          ? null
          : SupplierProductCacheModel.fromJson(
              json['supplierProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogItemCacheModelToJson(
        CatalogItemCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'productId': instance.productId,
      'supplierProductId': instance.supplierProductId,
      'sellPrice': instance.sellPrice,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'supplierProduct': instance.supplierProduct?.toJson(),
    };
