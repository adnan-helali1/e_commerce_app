enum StockStatus { wellStocked, inStock, lowStock, outOfStock }

class InventoryItem {
  final String name;
  final String supplier;
  final int currentStock;
  final int maxStock;
  final int minStock;
  final String lastUpdated;
  final StockStatus status;
  final int id;
  final int storeProduct;
  final int supplierProduct;

  final StoreProductModel? storeProductModel;
  final SupplierProductModel? supplierProductModel;
  final ProductModel? product;
  final SupplierModel? supplierModel;

  final String? createdAt;
  final String? updatedAt;

  const InventoryItem({
    required this.name,
    required this.supplier,
    required this.currentStock,
    required this.maxStock,
    required this.minStock,
    required this.lastUpdated,
    required this.status,
    required this.id,
    required this.storeProduct,
    required this.supplierProduct,

    // new optional
    this.storeProductModel,
    this.supplierProductModel,
    this.product,
    this.supplierModel,
    this.createdAt,
    this.updatedAt,
  });
}

class StoreProductModel {
  final int id;
  final int storeId;
  final int productId;
  final int supplierProductId;
  final String sellPrice;
  final bool isActive;
  final String createdAt;
  final String updatedAt;

  const StoreProductModel({
    required this.id,
    required this.storeId,
    required this.productId,
    required this.supplierProductId,
    required this.sellPrice,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });
}

class SupplierProductModel {
  final int id;
  final int supplierId;
  final int productId;
  final String buyPrice;
  final int stockQuantity;
  final String status;
  final String createdAt;
  final String updatedAt;

  const SupplierProductModel({
    required this.id,
    required this.supplierId,
    required this.productId,
    required this.buyPrice,
    required this.stockQuantity,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });
}

class SupplierModel {
  final int id;
  final String name;
  final String? phone;
  final String? email;
  final String? address;
  final String status;

  const SupplierModel({
    required this.id,
    required this.name,
    this.phone,
    this.email,
    this.address,
    required this.status,
  });
}

class ProductModel {
  final int id;
  final String name;
  final String? description;
  final String buyPrice;
  final int stockQuantity;
  final String status;

  const ProductModel({
    required this.id,
    required this.name,
    this.description,
    required this.buyPrice,
    required this.stockQuantity,
    required this.status,
  });
}
