// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      id: (json['id'] as num).toInt(),
      supplierId: (json['supplier_id'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      buyPrice: json['buy_price'] as String,
      stockQuantity: (json['stock_quantity'] as num).toInt(),
      status: json['status'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
      'id': instance.id,
      'supplier_id': instance.supplierId,
      'category_id': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'buy_price': instance.buyPrice,
      'stock_quantity': instance.stockQuantity,
      'status': instance.status,
      'category': instance.category,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
