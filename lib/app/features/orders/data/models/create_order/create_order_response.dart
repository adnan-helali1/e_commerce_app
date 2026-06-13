import 'package:B2B/app/features/orders/data/models/get_orders/models/order_item_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_response.freezed.dart';
part 'create_order_response.g.dart';

@freezed
abstract class CreateOrderResponse with _$CreateOrderResponse {
  const factory CreateOrderResponse({
    required CreateOrderData data,
    required String message,
    dynamic errors,
  }) = _CreateOrderResponse;

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);
}

@freezed
abstract class CreateOrderData with _$CreateOrderData {
  const factory CreateOrderData({
    required List<OrderModel> orders,   // ✅ الآن يستخدم OrderModel من get_orders
    @JsonKey(name: 'created_count') required int createdCount,
  }) = _CreateOrderData;

  factory CreateOrderData.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDataFromJson(json);
}