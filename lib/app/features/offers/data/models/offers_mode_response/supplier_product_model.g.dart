// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierProduct _$SupplierProductFromJson(Map<String, dynamic> json) =>
    _SupplierProduct(
      id: (json['id'] as num).toInt(),
      supplierId: (json['supplier_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      buyPrice: json['buy_price'] as String,
      stockQuantity: (json['stock_quantity'] as num).toInt(),
      status: json['status'] as String,
      supplier: Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierProductToJson(_SupplierProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplier_id': instance.supplierId,
      'product_id': instance.productId,
      'buy_price': instance.buyPrice,
      'stock_quantity': instance.stockQuantity,
      'status': instance.status,
      'supplier': instance.supplier,
      'product': instance.product,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
