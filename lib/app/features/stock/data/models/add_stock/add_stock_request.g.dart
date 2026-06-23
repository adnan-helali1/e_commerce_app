// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_stock_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddStockRequest _$AddStockRequestFromJson(Map<String, dynamic> json) =>
    _AddStockRequest(
      storeProductId: (json['store_product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unit_price'] as num).toDouble(),
      sellerName: json['seller_name'] as String,
    );

Map<String, dynamic> _$AddStockRequestToJson(_AddStockRequest instance) =>
    <String, dynamic>{
      'store_product_id': instance.storeProductId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'seller_name': instance.sellerName,
    };
