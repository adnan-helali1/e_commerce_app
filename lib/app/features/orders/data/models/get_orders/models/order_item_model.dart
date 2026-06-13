import 'package:B2B/app/features/orders/data/models/get_orders/models/order_supplier_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderItemModel {
  final int id;

  @JsonKey(name: 'order_id')
  final int orderId;

  @JsonKey(name: 'product_id')
  final int productId;

  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;

  final int quantity;

  @JsonKey(name: 'unit_buy_price')
  final String unitBuyPrice;

  @JsonKey(name: 'unit_sell_price')
  final String unitSellPrice;

  @JsonKey(name: 'created_at')
  final String createdAt; // ✅ String مش DateTime

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @JsonKey(name: 'supplier_product')
  final OrderSupplierProductModel supplierProduct;

  OrderItemModel({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.supplierProductId,
    required this.quantity,
    required this.unitBuyPrice,
    required this.unitSellPrice,
    required this.createdAt,
    required this.updatedAt,
    required this.supplierProduct,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);
}
