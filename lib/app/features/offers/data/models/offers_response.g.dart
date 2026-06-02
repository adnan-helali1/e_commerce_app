// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OffersResponse _$OffersResponseFromJson(Map<String, dynamic> json) =>
    OffersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => OfferData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$OffersResponseToJson(OffersResponse instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'stats': instance.stats.toJson(),
      'pagination': instance.pagination.toJson(),
      'message': instance.message,
      'errors': instance.errors,
    };

OfferData _$OfferDataFromJson(Map<String, dynamic> json) => OfferData(
      id: (json['id'] as num).toInt(),
      supplierProductId: (json['supplier_product_id'] as num).toInt(),
      offerPrice: json['offer_price'] as String,
      offerStock: (json['offer_stock'] as num).toInt(),
      status: json['status'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      supplierProduct: SupplierProduct.fromJson(
          json['supplier_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferDataToJson(OfferData instance) => <String, dynamic>{
      'id': instance.id,
      'supplier_product_id': instance.supplierProductId,
      'offer_price': instance.offerPrice,
      'offer_stock': instance.offerStock,
      'status': instance.status,
      'expires_at': instance.expiresAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'supplier_product': instance.supplierProduct.toJson(),
    };

SupplierProduct _$SupplierProductFromJson(Map<String, dynamic> json) =>
    SupplierProduct(
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

Map<String, dynamic> _$SupplierProductToJson(SupplierProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplier_id': instance.supplierId,
      'product_id': instance.productId,
      'buy_price': instance.buyPrice,
      'stock_quantity': instance.stockQuantity,
      'status': instance.status,
      'supplier': instance.supplier.toJson(),
      'product': instance.product.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Supplier _$SupplierFromJson(Map<String, dynamic> json) => Supplier(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SupplierToJson(Supplier instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
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

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'supplier_id': instance.supplierId,
      'category_id': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'buy_price': instance.buyPrice,
      'stock_quantity': instance.stockQuantity,
      'status': instance.status,
      'category': instance.category.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      imageUrl: json['image_url'] as String?,
      media: json['media'] as List<dynamic>,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'image_url': instance.imageUrl,
      'media': instance.media,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      totalOffers: (json['total_offers'] as num).toInt(),
      availableOffers: (json['available_offers'] as num).toInt(),
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'total_offers': instance.totalOffers,
      'available_offers': instance.availableOffers,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      perPage: (json['per_page'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total': instance.total,
      'last_page': instance.lastPage,
    };
