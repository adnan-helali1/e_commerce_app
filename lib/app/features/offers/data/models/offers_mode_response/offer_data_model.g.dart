// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfferData _$OfferDataFromJson(Map<String, dynamic> json) => _OfferData(
      id: (json['id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      offerPrice: json['offer_price'] as String,
      offerStock: (json['offer_stock'] as num).toInt(),
      status: json['status'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      supplierProduct: SupplierProduct.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferDataToJson(_OfferData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplier_product_id': instance.supplierProductId,
      'offer_price': instance.offerPrice,
      'offer_stock': instance.offerStock,
      'status': instance.status,
      'expires_at': instance.expiresAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'supplier_product': instance.supplierProduct,
    };
