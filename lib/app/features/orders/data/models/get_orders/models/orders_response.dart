import 'package:B2B/app/features/orders/data/models/get_orders/models/order_pagnittion_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OrdersResponse {
  final OrdersPaginatedData data;
  final String message;
  final dynamic errors;

  OrdersResponse({
    required this.data,
    required this.message,
    this.errors,
  });

  factory OrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersResponseToJson(this);
}
