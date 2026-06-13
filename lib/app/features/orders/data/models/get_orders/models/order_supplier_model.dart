import 'package:B2B/app/features/orders/data/models/get_orders/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_supplier_model.g.dart';

@JsonSerializable()
class OrderSupplierModel {
  final int id;
  final String name;
  final String? phone;
  final String? email;
  final String? address;
  final String status;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  OrderSupplierModel({
    required this.id,
    required this.name,
    this.phone,
    this.email,
    this.address,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderSupplierModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSupplierModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSupplierModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderSupplierProductModel {
  final int id;

  @JsonKey(name: 'supplier_id')
  final int supplierId;

  @JsonKey(name: 'product_id')
  final int productId;

  @JsonKey(name: 'buy_price')
  final String buyPrice;

  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;

  final String status;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  final OrderSupplierModel supplier;
  final OrderProductModel product;

  OrderSupplierProductModel({
    required this.id,
    required this.supplierId,
    required this.productId,
    required this.buyPrice,
    required this.stockQuantity,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.supplier,
    required this.product,
  });

  factory OrderSupplierProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSupplierProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSupplierProductModelToJson(this);
}
