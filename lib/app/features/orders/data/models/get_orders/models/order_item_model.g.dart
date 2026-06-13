// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      unitBuyPrice: json['unit_buy_price'] as String,
      unitSellPrice: json['unit_sell_price'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      supplierProduct: OrderSupplierProductModel.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'supplier_product_id': instance.supplierProductId,
      'quantity': instance.quantity,
      'unit_buy_price': instance.unitBuyPrice,
      'unit_sell_price': instance.unitSellPrice,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'supplier_product': instance.supplierProduct.toJson(),
    };
