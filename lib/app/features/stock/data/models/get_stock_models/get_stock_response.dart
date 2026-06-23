import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_stock_response.freezed.dart';
part 'get_stock_response.g.dart';

// ─── Root Response ────────────────────────────────────────────────────────────

@freezed
abstract class GetStockResponse with _$GetStockResponse {
  const factory GetStockResponse({
    required List<StockItem> data,
    required String message,
    dynamic errors,
  }) = _GetStockResponse;

  factory GetStockResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStockResponseFromJson(json);
}

// ─── Stock Item ───────────────────────────────────────────────────────────────

@freezed
abstract class StockItem with _$StockItem {
  const factory StockItem({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'store_product_id') required int storeProductId,
    required int quantity,
    @JsonKey(name: 'min_stock') required int minStock,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'store_product') required StoreProduct storeProduct,
  }) = _StockItem;

  factory StockItem.fromJson(Map<String, dynamic> json) =>
      _$StockItemFromJson(json);
}

// ─── Store Product ────────────────────────────────────────────────────────────

@freezed
abstract class StoreProduct with _$StoreProduct {
  const factory StoreProduct({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'supplier_product_id') required int supplierProductId,
    @JsonKey(name: 'sell_price') required String sellPrice,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'supplier_product') required SupplierProduct supplierProduct,
  }) = _StoreProduct;

  factory StoreProduct.fromJson(Map<String, dynamic> json) =>
      _$StoreProductFromJson(json);
}

// ─── Supplier Product ─────────────────────────────────────────────────────────

@freezed
abstract class SupplierProduct with _$SupplierProduct {
  const factory SupplierProduct({
    required int id,
    @JsonKey(name: 'supplier_id') required int supplierId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'buy_price') required String buyPrice,
    @JsonKey(name: 'stock_quantity') required int stockQuantity,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required Supplier supplier,
    required Product product,
  }) = _SupplierProduct;

  factory SupplierProduct.fromJson(Map<String, dynamic> json) =>
      _$SupplierProductFromJson(json);
}

// ─── Supplier ─────────────────────────────────────────────────────────────────

@freezed
abstract class Supplier with _$Supplier {
  const factory Supplier({
    required int id,
    required String name,
    String? phone,
    String? email,
    String? address,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Supplier;

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
}

// ─── Product ──────────────────────────────────────────────────────────────────

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    @JsonKey(name: 'supplier_id') required int supplierId,
    @JsonKey(name: 'category_id') required int categoryId,
    required String name,
    String? description,
    @JsonKey(name: 'buy_price') required String buyPrice,
    @JsonKey(name: 'stock_quantity') required int stockQuantity,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
