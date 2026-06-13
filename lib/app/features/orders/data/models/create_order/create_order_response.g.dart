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
