// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OffersCacheModel _$OffersCacheModelFromJson(Map<String, dynamic> json) =>
    OffersCacheModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OfferCacheData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: json['stats'] == null
          ? null
          : StatsCacheModel.fromJson(json['stats'] as Map<String, dynamic>),
      pagination: json['pagination'] == null
          ? null
          : PaginationCacheModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errors: json['errors'],
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$OffersCacheModelToJson(OffersCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'stats': instance.stats?.toJson(),
      'pagination': instance.pagination?.toJson(),
      'message': instance.message,
      'errors': instance.errors,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };

OfferCacheData _$OfferCacheDataFromJson(Map<String, dynamic> json) =>
    OfferCacheData(
      id: (json['id'] as num?)?.toInt(),
      supplierProductId: (json['supplierProductId'] as num?)?.toInt(),
      offerPrice: json['offerPrice'] as String?,
      offerStock: (json['offerStock'] as num?)?.toInt(),
      status: json['status'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      supplierProduct: json['supplierProduct'] == null
          ? null
          : SupplierProductCacheModel.fromJson(
              json['supplierProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferCacheDataToJson(OfferCacheData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierProductId': instance.supplierProductId,
      'offerPrice': instance.offerPrice,
      'offerStock': instance.offerStock,
      'status': instance.status,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'supplierProduct': instance.supplierProduct?.toJson(),
    };

SupplierProductCacheModel _$SupplierProductCacheModelFromJson(
        Map<String, dynamic> json) =>
    SupplierProductCacheModel(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      buyPrice: json['buyPrice'] as String?,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      supplier: json['supplier'] == null
          ? null
          : SupplierCacheModel.fromJson(
              json['supplier'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductCacheModel.fromJson(json['product'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SupplierProductCacheModelToJson(
        SupplierProductCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'productId': instance.productId,
      'buyPrice': instance.buyPrice,
      'stockQuantity': instance.stockQuantity,
      'status': instance.status,
      'supplier': instance.supplier?.toJson(),
      'product': instance.product?.toJson(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SupplierCacheModel _$SupplierCacheModelFromJson(Map<String, dynamic> json) =>
    SupplierCacheModel(
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

Map<String, dynamic> _$SupplierCacheModelToJson(SupplierCacheModel instance) =>
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

ProductCacheModel _$ProductCacheModelFromJson(Map<String, dynamic> json) =>
    ProductCacheModel(
      id: (json['id'] as num?)?.toInt(),
      supplierId: (json['supplierId'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      buyPrice: json['buyPrice'] as String?,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt(),
      status: json['status'] as String?,
      category: json['category'] == null
          ? null
          : CategoryCacheModel.fromJson(
              json['category'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProductCacheModelToJson(ProductCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierId': instance.supplierId,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'buyPrice': instance.buyPrice,
      'stockQuantity': instance.stockQuantity,
      'status': instance.status,
      'category': instance.category?.toJson(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

CategoryCacheModel _$CategoryCacheModelFromJson(Map<String, dynamic> json) =>
    CategoryCacheModel(
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

Map<String, dynamic> _$CategoryCacheModelToJson(CategoryCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'imageUrl': instance.imageUrl,
      'media': instance.media,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

StatsCacheModel _$StatsCacheModelFromJson(Map<String, dynamic> json) =>
    StatsCacheModel(
      totalOffers: (json['totalOffers'] as num?)?.toInt(),
      availableOffers: (json['availableOffers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatsCacheModelToJson(StatsCacheModel instance) =>
    <String, dynamic>{
      'totalOffers': instance.totalOffers,
      'availableOffers': instance.availableOffers,
    };

PaginationCacheModel _$PaginationCacheModelFromJson(
        Map<String, dynamic> json) =>
    PaginationCacheModel(
      perPage: (json['perPage'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationCacheModelToJson(
        PaginationCacheModel instance) =>
    <String, dynamic>{
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'total': instance.total,
      'lastPage': instance.lastPage,
    };
