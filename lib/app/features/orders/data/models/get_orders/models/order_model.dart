import 'package:B2B/app/features/orders/data/models/get_orders/models/order_category_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_item_model.dart'; // ✅ أضف هذا
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_supplier_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderModel {
  final int id;

  @JsonKey(name: 'store_id')
  final int storeId;

  @JsonKey(name: 'supplier_id')
  final int supplierId;

  final String status;

  @JsonKey(name: 'total_buy')
  final String totalBuy;

  @JsonKey(name: 'total_sell')
  final String totalSell;

  final String? notes;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  final OrderSupplierModel supplier;
  final List<OrderItemModel> items;

  OrderModel({
    required this.id,
    required this.storeId,
    required this.supplierId,
    required this.status,
    required this.totalBuy,
    required this.totalSell,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
    required this.supplier,
    required this.items,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderProductModel {
  final int id;

  @JsonKey(name: 'supplier_id')
  final int supplierId;

  @JsonKey(name: 'category_id')
  final int categoryId;

  final String name;
  final String? description;

  @JsonKey(name: 'buy_price')
  final String buyPrice;

  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;

  final String status;

  @JsonKey(name: 'created_at')
  final String createdAt; // ✅ String

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  final OrderCategoryModel category;

  OrderProductModel({
    required this.id,
    required this.supplierId,
    required this.categoryId,
    required this.name,
    this.description,
    required this.buyPrice,
    required this.stockQuantity,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProductModelToJson(this);
}
