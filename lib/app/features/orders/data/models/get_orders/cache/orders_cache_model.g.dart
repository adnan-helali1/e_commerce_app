// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersCacheModel _$OrdersCacheModelFromJson(Map<String, dynamic> json) =>
    OrdersCacheModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : OrdersPaginationCacheModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      message: json['message'] as String?,
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$OrdersCacheModelToJson(OrdersCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination?.toJson(),
      'message': instance.message,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };

OrderCacheModel _$OrderCacheModelFromJson(Map<String, dynamic> json) =>
    OrderCacheModel(
      id: (json['id'] as num?)?.toInt(),
      storeId: (json['storeId'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      status: json['status'] as String?,
      totalBuy: json['totalBuy'] as String?,
      totalSell: json['totalSell'] as String?,
      notes: json['notes'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      supplier: json['supplier'] == null
          ? null
          : OrderSupplierCacheModel.fromJson(
              json['supplier'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderCacheModelToJson(OrderCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'supplierId': instance.supplierId,
      'status': instance.status,
      'totalBuy': instance.totalBuy,
      'totalSell': instance.totalSell,
      'notes': instance.notes,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'supplier': instance.supplier?.toJson(),
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

OrderSupplierCacheModel _$OrderSupplierCacheModelFromJson(
        Map<String, dynamic> json) =>
    OrderSupplierCacheModel(
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

Map<String, dynamic> _$OrderSupplierCacheModelToJson(
        OrderSupplierCacheModel instance) =>
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

OrderItemCacheModel _$OrderItemCacheModelFromJson(Map<String, dynamic> json) =>
    OrderItemCacheModel(
      id: (json['id'] as num?)?.toInt(),
      orderId: (json['orderId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      supplierProductId: (json['supplierProductId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      unitBuyPrice: json['unitBuyPrice'] as String?,
      unitSellPrice: json['unitSellPrice'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      supplierProduct: json['supplierProduct'] == null
          ? null
          : OrderSupplierProductCacheModel.fromJson(
              json['supplierProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemCacheModelToJson(
        OrderItemCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'supplierProductId': instance.supplierProductId,
      'quantity': instance.quantity,
      'unitBuyPrice': instance.unitBuyPrice,
      'unitSellPrice': instance.unitSellPrice,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'supplierProduct': instance.supplierProduct?.toJson(),
    };

OrderSupplierProductCacheModel _$OrderSupplierProductCacheModelFromJson(
        Map<String, dynamic> json) =>
    OrderSupplierProductCacheModel(
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
          : OrderSupplierCacheModel.fromJson(
              json['supplier'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : OrderProductCacheModel.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderSupplierProductCacheModelToJson(
        OrderSupplierProductCacheModel instance) =>
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

OrderProductCacheModel _$OrderProductCacheModelFromJson(
        Map<String, dynamic> json) =>
    OrderProductCacheModel(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      buyPrice: json['buyPrice'] as String?,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      category: json['category'] == null
          ? null
          : OrderCategoryCacheModel.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderProductCacheModelToJson(
        OrderProductCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'buyPrice': instance.buyPrice,
      'stockQuantity': instance.stockQuantity,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'category': instance.category?.toJson(),
    };

OrderCategoryCacheModel _$OrderCategoryCacheModelFromJson(
        Map<String, dynamic> json) =>
    OrderCategoryCacheModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      imageUrl: json['imageUrl'] as String?,
      media: json['media'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OrderCategoryCacheModelToJson(
        OrderCategoryCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'imageUrl': instance.imageUrl,
      'media': instance.media,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

OrdersPaginationCacheModel _$OrdersPaginationCacheModelFromJson(
        Map<String, dynamic> json) =>
    OrdersPaginationCacheModel(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      nextPageUrl: json['nextPageUrl'] as String?,
      prevPageUrl: json['prevPageUrl'] as String?,
    );

Map<String, dynamic> _$OrdersPaginationCacheModelToJson(
        OrdersPaginationCacheModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'perPage': instance.perPage,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
      'prevPageUrl': instance.prevPageUrl,
    };
