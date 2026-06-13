import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

@freezed
abstract class CreateOrderRequest with _$CreateOrderRequest {
  const factory CreateOrderRequest({
    required List<OrderItemRequest> items,
  }) = _CreateOrderRequest;

  factory CreateOrderRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateOrderRequestFromJson(json);
}

@freezed
abstract class OrderItemRequest with _$OrderItemRequest {
  const factory OrderItemRequest({
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    required int quantity,
  }) = _OrderItemRequest;

  factory OrderItemRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderItemRequestFromJson(json);
}
