// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_offer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddOfferData _$AddOfferDataFromJson(Map<String, dynamic> json) =>
    _AddOfferData(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      sellPrice: json['sell_price'] as String,
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      supplierProduct: SupplierProduct.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddOfferDataToJson(_AddOfferData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'supplier_product_id': instance.supplierProductId,
      'product_id': instance.productId,
      'sell_price': instance.sellPrice,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'supplier_product': instance.supplierProduct,
    };
