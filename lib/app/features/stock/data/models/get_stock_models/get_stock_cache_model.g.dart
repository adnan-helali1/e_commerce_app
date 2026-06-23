// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stock_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetStockCacheModel _$GetStockCacheModelFromJson(Map<String, dynamic> json) =>
    GetStockCacheModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StockItemCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      errors: json['errors'],
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$GetStockCacheModelToJson(GetStockCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'message': instance.message,
      'errors': instance.errors,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };

StockItemCacheModel _$StockItemCacheModelFromJson(Map<String, dynamic> json) =>
    StockItemCacheModel(
      id: (json['id'] as num?)?.toInt(),
      storeId: (json['storeId'] as num?)?.toInt(),
      storeProductId: (json['storeProductId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      minStock: (json['minStock'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      storeProduct: json['storeProduct'] == null
          ? null
          : StoreProductCacheModel.fromJson(
              json['storeProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StockItemCacheModelToJson(
        StockItemCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'storeProductId': instance.storeProductId,
      'quantity': instance.quantity,
      'minStock': instance.minStock,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'storeProduct': instance.storeProduct?.toJson(),
    };

StoreProductCacheModel _$StoreProductCacheModelFromJson(
        Map<String, dynamic> json) =>
    StoreProductCacheModel(
      id: (json['id'] as num?)?.toInt(),
      storeId: (json['storeId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      supplierProductId: (json['supplierProductId'] as num?)?.toInt(),
      sellPrice: json['sellPrice'] as String?,
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      supplierProduct: json['supplierProduct'] == null
          ? null
          : StockSupplierProductCacheModel.fromJson(
              json['supplierProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreProductCacheModelToJson(
        StoreProductCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'productId': instance.productId,
      'supplierProductId': instance.supplierProductId,
      'sellPrice': instance.sellPrice,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'supplierProduct': instance.supplierProduct?.toJson(),
    };

StockSupplierProductCacheModel _$StockSupplierProductCacheModelFromJson(
        Map<String, dynamic> json) =>
    StockSupplierProductCacheModel(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      buyPrice: json['buyPrice'] as String?,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      supplier: json['supplier'] == null
          ? null
          : StockSupplierCacheModel.fromJson(
              json['supplier'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : StockProductCacheModel.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StockSupplierProductCacheModelToJson(
        StockSupplierProductCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'productId': instance.productId,
      'buyPrice': instance.buyPrice,
      'stockQuantity': instance.stockQuantity,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'supplier': instance.supplier?.toJson(),
      'product': instance.product?.toJson(),
    };

StockSupplierCacheModel _$StockSupplierCacheModelFromJson(
        Map<String, dynamic> json) =>
    StockSupplierCacheModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$StockSupplierCacheModelToJson(
        StockSupplierCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

StockProductCacheModel _$StockProductCacheModelFromJson(
        Map<String, dynamic> json) =>
    StockProductCacheModel(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      buyPrice: json['buyPrice'] as String?,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$StockProductCacheModelToJson(
        StockProductCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'buyPrice': instance.buyPrice,
      'stockQuantity': instance.stockQuantity,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
