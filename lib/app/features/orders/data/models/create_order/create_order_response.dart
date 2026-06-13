import 'package:B2B/app/features/offers/data/models/offers_model_response/supplier_model.dart';
import 'package:B2B/app/features/offers/data/models/offers_model_response/supplier_product_model.dart';
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

  factory CreateOrderResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateOrderResponseFromJson(json);
}

@freezed
abstract class CreateOrderData with _$CreateOrderData {
  const factory CreateOrderData({
    required List<OrderModel> orders,
    @JsonKey(name: 'created_count') required int createdCount,
  }) = _CreateOrderData;

  factory CreateOrderData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateOrderDataFromJson(json);
}

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'supplier_id') required int supplierId,
    required String status,
    @JsonKey(name: 'total_buy') required String totalBuy,
    @JsonKey(name: 'total_sell') required String totalSell,
    String? notes,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required Supplier supplier,
    required List<OrderItemModel> items,
  }) = _OrderModel;

  factory OrderModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderModelFromJson(json);
}

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required int id,
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    required int quantity,
    @JsonKey(name: 'unit_buy_price') required String unitBuyPrice,
    @JsonKey(name: 'unit_sell_price') required String unitSellPrice,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'supplier_product') required SupplierProduct supplierProduct,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderItemModelFromJson(json);
}
