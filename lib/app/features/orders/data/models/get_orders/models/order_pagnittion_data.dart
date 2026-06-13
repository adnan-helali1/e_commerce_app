import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_model.dart';
part 'order_pagnittion_data.g.dart';

@JsonSerializable(explicitToJson: true)
class OrdersPaginatedData {
  @JsonKey(name: 'current_page')
  final int currentPage;

  final List<OrderModel> data;

  @JsonKey(name: 'last_page')
  final int lastPage;

  @JsonKey(name: 'per_page')
  final int perPage;

  final int total;

  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;

  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;

  OrdersPaginatedData({
    required this.currentPage,
    required this.data,
    required this.lastPage,
    required this.perPage,
    required this.total,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  factory OrdersPaginatedData.fromJson(Map<String, dynamic> json) =>
      _$OrdersPaginatedDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersPaginatedDataToJson(this);
}
