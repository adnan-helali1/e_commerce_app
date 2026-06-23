import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_stock_cache_model.g.dart';

// ─── Root Cache Model ─────────────────────────────────────────────────────────

@JsonSerializable(explicitToJson: true)
class GetStockCacheModel {
  final List<StockItemCacheModel>? data;
  final String? message;
  final dynamic errors;
  final DateTime cachedAt;

  GetStockCacheModel({
    this.data,
    this.message,
    this.errors,
    required this.cachedAt,
  });

  factory GetStockCacheModel.fromJson(Map<String, dynamic> json) =>
      _$GetStockCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetStockCacheModelToJson(this);

  /// FROM API → CACHE
  factory GetStockCacheModel.fromResponse(
    GetStockResponse response, {
    DateTime? cachedAt,
  }) {
    return GetStockCacheModel(
      data: response.data.map(StockItemCacheModel.fromResponse).toList(),
      message: response.message,
      errors: response.errors,
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  /// CACHE → API MODEL
  GetStockResponse toResponse() {
    return GetStockResponse(
      data: data?.map((e) => e.toResponse()).toList() ?? [],
      message: message ?? '',
      errors: errors,
    );
  }
}

// ─── Stock Item Cache Model ───────────────────────────────────────────────────

@JsonSerializable(explicitToJson: true)
class StockItemCacheModel {
  final int? id;
  final int? storeId;
  final int? storeProductId;
  final int? quantity;
  final int? minStock;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final StoreProductCacheModel? storeProduct;

  StockItemCacheModel({
    this.id,
    this.storeId,
    this.storeProductId,
    this.quantity,
    this.minStock,
    this.createdAt,
    this.updatedAt,
    this.storeProduct,
  });

  factory StockItemCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StockItemCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StockItemCacheModelToJson(this);

  factory StockItemCacheModel.fromResponse(StockItem item) {
    return StockItemCacheModel(
      id: item.id,
      storeId: item.storeId,
      storeProductId: item.storeProductId,
      quantity: item.quantity,
      minStock: item.minStock,
      createdAt: item.createdAt,
      updatedAt: item.updatedAt,
      storeProduct: StoreProductCacheModel.fromResponse(item.storeProduct),
    );
  }

  StockItem toResponse() {
    return StockItem(
      id: id!,
      storeId: storeId!,
      storeProductId: storeProductId!,
      quantity: quantity!,
      minStock: minStock!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      storeProduct: storeProduct!.toResponse(),
    );
  }
}

// ─── Store Product Cache Model ────────────────────────────────────────────────

@JsonSerializable(explicitToJson: true)
class StoreProductCacheModel {
  final int? id;
  final int? storeId;
  final int? productId;
  final int? supplierProductId;
  final String? sellPrice;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final StockSupplierProductCacheModel? supplierProduct;

  StoreProductCacheModel({
    this.id,
    this.storeId,
    this.productId,
    this.supplierProductId,
    this.sellPrice,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.supplierProduct,
  });

  factory StoreProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StoreProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoreProductCacheModelToJson(this);

  factory StoreProductCacheModel.fromResponse(StoreProduct model) {
    return StoreProductCacheModel(
      id: model.id,
      storeId: model.storeId,
      productId: model.productId,
      supplierProductId: model.supplierProductId,
      sellPrice: model.sellPrice,
      isActive: model.isActive,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      supplierProduct:
          StockSupplierProductCacheModel.fromResponse(model.supplierProduct),
    );
  }

  StoreProduct toResponse() {
    return StoreProduct(
      id: id!,
      storeId: storeId!,
      productId: productId!,
      supplierProductId: supplierProductId!,
      sellPrice: sellPrice!,
      isActive: isActive!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      supplierProduct: supplierProduct!.toResponse(),
    );
  }
}

// ─── Supplier Product Cache Model ─────────────────────────────────────────────

@JsonSerializable(explicitToJson: true)
class StockSupplierProductCacheModel {
  final int? id;
  final int? supplierId;
  final int? productId;
  final String? buyPrice;
  final int? stockQuantity;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final StockSupplierCacheModel? supplier;
  final StockProductCacheModel? product;

  StockSupplierProductCacheModel({
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

  factory StockSupplierProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StockSupplierProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StockSupplierProductCacheModelToJson(this);

  factory StockSupplierProductCacheModel.fromResponse(SupplierProduct model) {
    return StockSupplierProductCacheModel(
      id: model.id,
      supplierId: model.supplierId,
      productId: model.productId,
      buyPrice: model.buyPrice,
      stockQuantity: model.stockQuantity,
      status: model.status,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      supplier: StockSupplierCacheModel.fromResponse(model.supplier),
      product: StockProductCacheModel.fromResponse(model.product),
    );
  }

  SupplierProduct toResponse() {
    return SupplierProduct(
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

// ─── Supplier Cache Model ─────────────────────────────────────────────────────

@JsonSerializable()
class StockSupplierCacheModel {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  final String? address;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  StockSupplierCacheModel({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory StockSupplierCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StockSupplierCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StockSupplierCacheModelToJson(this);

  factory StockSupplierCacheModel.fromResponse(Supplier s) {
    return StockSupplierCacheModel(
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

  Supplier toResponse() {
    return Supplier(
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

// ─── Product Cache Model ──────────────────────────────────────────────────────

@JsonSerializable()
class StockProductCacheModel {
  final int? id;
  final int? supplierId;
  final int? categoryId;
  final String? name;
  final String? description;
  final String? buyPrice;
  final int? stockQuantity;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  StockProductCacheModel({
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
  });

  factory StockProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StockProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StockProductCacheModelToJson(this);

  factory StockProductCacheModel.fromResponse(Product p) {
    return StockProductCacheModel(
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
    );
  }

  Product toResponse() {
    return Product(
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
    );
  }
}
