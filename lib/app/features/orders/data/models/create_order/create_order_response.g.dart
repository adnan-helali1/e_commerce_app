// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    _CreateOrderResponse(
      data: CreateOrderData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
        _CreateOrderResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
    };

_CreateOrderData _$CreateOrderDataFromJson(Map<String, dynamic> json) =>
    _CreateOrderData(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdCount: (json['created_count'] as num).toInt(),
    );

Map<String, dynamic> _$CreateOrderDataToJson(_CreateOrderData instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'created_count': instance.createdCount,
    };

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      supplierId: (json['supplier_id'] as num).toInt(),
      status: json['status'] as String,
      totalBuy: json['total_buy'] as String,
      totalSell: json['total_sell'] as String,
      notes: json['notes'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      supplier: Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'supplier_id': instance.supplierId,
      'status': instance.status,
      'total_buy': instance.totalBuy,
      'total_sell': instance.totalSell,
      'notes': instance.notes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'supplier': instance.supplier,
      'items': instance.items,
    };

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      unitBuyPrice: json['unit_buy_price'] as String,
      unitSellPrice: json['unit_sell_price'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      supplierProduct: SupplierProduct.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
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
      'supplier_product': instance.supplierProduct,
    };
