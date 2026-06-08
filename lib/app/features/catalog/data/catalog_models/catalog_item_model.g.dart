// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => _CatalogItem(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      sellPrice: json['sell_price'] as String,
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      supplierProduct: SupplierProduct.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogItemToJson(_CatalogItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'product_id': instance.productId,
      'supplier_product_id': instance.supplierProductId,
      'sell_price': instance.sellPrice,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'supplier_product': instance.supplierProduct,
    };
