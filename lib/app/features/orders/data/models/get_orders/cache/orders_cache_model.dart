import 'package:B2B/app/features/orders/data/models/get_orders/models/order_category_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_item_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_pagnittion_data.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_supplier_model.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/summery_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrdersCacheModel {
  final List<OrderCacheModel>? data;
  final OrdersPaginationCacheModel? pagination;
  final String? message;
  final DateTime cachedAt;

  OrdersCacheModel({
    this.data,
    this.pagination,
    this.message,
    required this.cachedAt,
  });

  factory OrdersCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersCacheModelToJson(this);

  /// FROM API → CACHE
  factory OrdersCacheModel.fromResponse(
    OrdersResponse response, {
    DateTime? cachedAt,
  }) {
    return OrdersCacheModel(
      data: response.data.data.map(OrderCacheModel.fromResponse).toList(),
      pagination: OrdersPaginationCacheModel.fromResponse(response.data),
      message: response.message,
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  /// CACHE → API MODEL
  OrdersResponse toResponse() {
    return OrdersResponse(
      summery: SummeryModel(
        total: pagination?.total?.toDouble() ?? 0.0,
        totalSell: data
                ?.map((o) => o.totalSell != null
                    ? double.tryParse(o.totalSell!) ?? 0.0
                    : 0.0)
                .fold(0.0, (a, b) => a) ??
            0.0,
      ),
      data: OrdersPaginatedData(
        currentPage: pagination!.currentPage!,
        data: data?.map((e) => e.toResponse()).toList() ?? [],
        lastPage: pagination!.lastPage!,
        perPage: pagination!.perPage!,
        total: pagination!.total!,
        nextPageUrl: pagination!.nextPageUrl,
        prevPageUrl: pagination!.prevPageUrl,
      ),
      message: message ?? '',
      errors: null,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderCacheModel {
  final int? id;
  final int? storeId;
  final int? supplierId;
  final String? status;
  final String? totalBuy;
  final String? totalSell;
  final String? notes;
  final String? createdAt;
  final String? updatedAt;
  final OrderSupplierCacheModel? supplier;
  final List<OrderItemCacheModel>? items;

  OrderCacheModel({
    this.id,
    this.storeId,
    this.supplierId,
    this.status,
    this.totalBuy,
    this.totalSell,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.supplier,
    this.items,
  });

  factory OrderCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrderCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCacheModelToJson(this);

  factory OrderCacheModel.fromResponse(OrderModel o) {
    return OrderCacheModel(
      id: o.id,
      storeId: o.storeId,
      supplierId: o.supplierId,
      status: o.status,
      totalBuy: o.totalBuy,
      totalSell: o.totalSell,
      notes: o.notes,
      createdAt: o.createdAt,
      updatedAt: o.updatedAt,
      supplier: OrderSupplierCacheModel.fromResponse(o.supplier),
      items: o.items.map(OrderItemCacheModel.fromResponse).toList(),
    );
  }

  OrderModel toResponse() {
    return OrderModel(
      id: id!,
      storeId: storeId!,
      supplierId: supplierId!,
      status: status!,
      totalBuy: totalBuy!,
      totalSell: totalSell!,
      notes: notes,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      supplier: supplier!.toResponse(),
      items: items?.map((e) => e.toResponse()).toList() ?? [],
    );
  }
}

@JsonSerializable()
class OrderSupplierCacheModel {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  final String? address;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OrderSupplierCacheModel({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderSupplierCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSupplierCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSupplierCacheModelToJson(this);

  factory OrderSupplierCacheModel.fromResponse(OrderSupplierModel s) {
    return OrderSupplierCacheModel(
      id: s.id,
      name: s.name,
      phone: s.phone,
      email: s.email,
      address: s.address,
      status: s.status,
      createdAt: s.createdAt,
      updatedAt: s.updatedAt,
    );
  }

  OrderSupplierModel toResponse() {
    return OrderSupplierModel(
      id: id!,
      name: name!,
      phone: phone,
      email: email,
      address: address,
      status: status!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItemCacheModel {
  final int? id;
  final int? orderId;
  final int? productId;
  final int? supplierProductId;
  final int? quantity;
  final String? unitBuyPrice;
  final String? unitSellPrice;
  final String? createdAt;
  final String? updatedAt;
  final OrderSupplierProductCacheModel? supplierProduct;

  OrderItemCacheModel({
    this.id,
    this.orderId,
    this.productId,
    this.supplierProductId,
    this.quantity,
    this.unitBuyPrice,
    this.unitSellPrice,
    this.createdAt,
    this.updatedAt,
    this.supplierProduct,
  });

  factory OrderItemCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemCacheModelToJson(this);

  factory OrderItemCacheModel.fromResponse(OrderItemModel item) {
    return OrderItemCacheModel(
      id: item.id,
      orderId: item.orderId,
      productId: item.productId,
      supplierProductId: item.supplierProductId,
      quantity: item.quantity,
      unitBuyPrice: item.unitBuyPrice,
      unitSellPrice: item.unitSellPrice,
      createdAt: item.createdAt,
      updatedAt: item.updatedAt,
      supplierProduct:
          OrderSupplierProductCacheModel.fromResponse(item.supplierProduct),
    );
  }

  OrderItemModel toResponse() {
    return OrderItemModel(
      id: id!,
      orderId: orderId!,
      productId: productId!,
      supplierProductId: supplierProductId!,
      quantity: quantity!,
      unitBuyPrice: unitBuyPrice!,
      unitSellPrice: unitSellPrice!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      supplierProduct: supplierProduct!.toResponse(),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderSupplierProductCacheModel {
  final int? id;
  final int? supplierId;
  final int? productId;
  final String? buyPrice;
  final int? stockQuantity;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final OrderSupplierCacheModel? supplier;
  final OrderProductCacheModel? product;

  OrderSupplierProductCacheModel({
    this.id,
    this.supplierId,
    this.productId,
    this.buyPrice,
    this.stockQuantity,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.supplier,
    this.product,
  });

  factory OrderSupplierProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSupplierProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSupplierProductCacheModelToJson(this);

  factory OrderSupplierProductCacheModel.fromResponse(
    OrderSupplierProductModel sp,
  ) {
    return OrderSupplierProductCacheModel(
      id: sp.id,
      supplierId: sp.supplierId,
      productId: sp.productId,
      buyPrice: sp.buyPrice,
      stockQuantity: sp.stockQuantity,
      status: sp.status,
      createdAt: sp.createdAt,
      updatedAt: sp.updatedAt,
      supplier: OrderSupplierCacheModel.fromResponse(sp.supplier),
      product: OrderProductCacheModel.fromResponse(sp.product),
    );
  }

  OrderSupplierProductModel toResponse() {
    return OrderSupplierProductModel(
      id: id!,
      supplierId: supplierId!,
      productId: productId!,
      buyPrice: buyPrice!,
      stockQuantity: stockQuantity!,
      status: status!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      supplier: supplier!.toResponse(),
      product: product!.toResponse(),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OrderProductCacheModel {
  final int? id;
  final int? supplierId;
  final int? categoryId;
  final String? name;
  final String? description;
  final String? buyPrice;
  final int? stockQuantity;
  final String? status;
  final String? createdAt;
  final String? updatedAt;
  final OrderCategoryCacheModel? category;

  OrderProductCacheModel({
    this.id,
    this.supplierId,
    this.categoryId,
    this.name,
    this.description,
    this.buyPrice,
    this.stockQuantity,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.category,
  });

  factory OrderProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProductCacheModelToJson(this);

  factory OrderProductCacheModel.fromResponse(OrderProductModel p) {
    return OrderProductCacheModel(
      id: p.id,
      supplierId: p.supplierId,
      categoryId: p.categoryId,
      name: p.name,
      description: p.description,
      buyPrice: p.buyPrice,
      stockQuantity: p.stockQuantity,
      status: p.status,
      createdAt: p.createdAt,
      updatedAt: p.updatedAt,
      category: OrderCategoryCacheModel.fromResponse(p.category),
    );
  }

  OrderProductModel toResponse() {
    return OrderProductModel(
      id: id!,
      supplierId: supplierId!,
      categoryId: categoryId!,
      name: name!,
      description: description,
      buyPrice: buyPrice!,
      stockQuantity: stockQuantity!,
      status: status!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      category: category!.toResponse(),
    );
  }
}

@JsonSerializable()
class OrderCategoryCacheModel {
  final int? id;
  final String? name;
  final String? image;
  final String? imageUrl;
  final List<dynamic>? media;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  OrderCategoryCacheModel({
    this.id,
    this.name,
    this.image,
    this.imageUrl,
    this.media,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderCategoryCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrderCategoryCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCategoryCacheModelToJson(this);

  factory OrderCategoryCacheModel.fromResponse(OrderCategoryModel c) {
    return OrderCategoryCacheModel(
      id: c.id,
      name: c.name,
      image: c.image,
      imageUrl: c.imageUrl,
      media: c.media,
      createdAt: c.createdAt,
      updatedAt: c.updatedAt,
    );
  }

  OrderCategoryModel toResponse() {
    return OrderCategoryModel(
      id: id!,
      name: name!,
      image: image,
      imageUrl: imageUrl,
      media: media ?? [],
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}

@JsonSerializable()
class OrdersPaginationCacheModel {
  final int? currentPage;
  final int? lastPage;
  final int? perPage;
  final int? total;
  final String? nextPageUrl;
  final String? prevPageUrl;

  OrdersPaginationCacheModel({
    this.currentPage,
    this.lastPage,
    this.perPage,
    this.total,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  factory OrdersPaginationCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersPaginationCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersPaginationCacheModelToJson(this);

  factory OrdersPaginationCacheModel.fromResponse(OrdersPaginatedData p) {
    return OrdersPaginationCacheModel(
      currentPage: p.currentPage,
      lastPage: p.lastPage,
      perPage: p.perPage,
      total: p.total,
      nextPageUrl: p.nextPageUrl,
      prevPageUrl: p.prevPageUrl,
    );
  }
}
