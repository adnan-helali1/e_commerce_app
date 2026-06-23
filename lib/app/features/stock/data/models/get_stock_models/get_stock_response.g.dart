// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStockResponse _$GetStockResponseFromJson(Map<String, dynamic> json) =>
    _GetStockResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => StockItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$GetStockResponseToJson(_GetStockResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
    };

_StockItem _$StockItemFromJson(Map<String, dynamic> json) => _StockItem(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      storeProductId: (json['store_product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      minStock: (json['min_stock'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      storeProduct:
          StoreProduct.fromJson(json['store_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StockItemToJson(_StockItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'store_product_id': instance.storeProductId,
      'quantity': instance.quantity,
      'min_stock': instance.minStock,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'store_product': instance.storeProduct,
    };

_StoreProduct _$StoreProductFromJson(Map<String, dynamic> json) =>
    _StoreProduct(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      sellPrice: json['sell_price'] as String,
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      supplierProduct: SupplierProduct.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StoreProductToJson(_StoreProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'product_id': instance.productId,
      'supplier_product_id': instance.supplierProductId,
      'sell_price': instance.sellPrice,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'supplier_product': instance.supplierProduct,
    };

_SupplierProduct _$SupplierProductFromJson(Map<String, dynamic> json) =>
    _SupplierProduct(
      id: (json['id'] as num).toInt(),
      supplierId: (json['supplier_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      buyPrice: json['buy_price'] as String,
      stockQuantity: (json['stock_quantity'] as num).toInt(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      supplier: Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SupplierProductToJson(_SupplierProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplier_id': instance.supplierId,
      'product_id': instance.productId,
      'buy_price': instance.buyPrice,
      'stock_quantity': instance.stockQuantity,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'supplier': instance.supplier,
      'product': instance.product,
    };

_Supplier _$SupplierFromJson(Map<String, dynamic> json) => _Supplier(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierToJson(_Supplier instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      id: (json['id'] as num).toInt(),
      supplierId: (json['supplier_id'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      buyPrice: json['buy_price'] as String,
      stockQuantity: (json['stock_quantity'] as num).toInt(),
      status: json['status'] as String,
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
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
