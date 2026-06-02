import 'package:json_annotation/json_annotation.dart';
import 'offers_response.dart';

part 'offers_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OffersCacheModel {
  final List<OfferCacheData>? data;
  final StatsCacheModel? stats;
  final PaginationCacheModel? pagination;
  final String? message;
  final dynamic errors;
  final DateTime cachedAt;

  OffersCacheModel({
    this.data,
    this.stats,
    this.pagination,
    this.message,
    this.errors,
    required this.cachedAt,
  });

  factory OffersCacheModel.fromJson(Map<String, dynamic> json) =>
      _$OffersCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$OffersCacheModelToJson(this);

  /// FROM API → CACHE
  factory OffersCacheModel.fromResponse(
    OffersResponse response, {
    DateTime? cachedAt,
  }) {
    return OffersCacheModel(
      data: response.data.map(OfferCacheData.fromResponse).toList(),
      stats: StatsCacheModel.fromResponse(response.stats),
      pagination: PaginationCacheModel.fromResponse(response.pagination),
      message: response.message,
      errors: response.errors,
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  /// CACHE → API MODEL
  OffersResponse toResponse() {
    return OffersResponse(
      data: data?.map((e) => e.toResponse()).toList() ?? [],
      stats: stats!.toResponse(),
      pagination: pagination!.toResponse(),
      message: message ?? '',
      errors: errors,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OfferCacheData {
  final int? id;
  final int? supplierProductId;
  final String? offerPrice;
  final int? offerStock;
  final String? status;
  final DateTime? expiresAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final SupplierProductCacheModel? supplierProduct;

  OfferCacheData({
    this.id,
    this.supplierProductId,
    this.offerPrice,
    this.offerStock,
    this.status,
    this.expiresAt,
    this.createdAt,
    this.updatedAt,
    this.supplierProduct,
  });

  factory OfferCacheData.fromJson(Map<String, dynamic> json) =>
      _$OfferCacheDataFromJson(json);

  Map<String, dynamic> toJson() => _$OfferCacheDataToJson(this);

  factory OfferCacheData.fromResponse(OfferData data) {
    return OfferCacheData(
      id: data.id,
      supplierProductId: data.supplierProductId,
      offerPrice: data.offerPrice,
      offerStock: data.offerStock,
      status: data.status,
      expiresAt: data.expiresAt,
      createdAt: data.createdAt,
      updatedAt: data.updatedAt,
      supplierProduct:
          SupplierProductCacheModel.fromResponse(data.supplierProduct),
    );
  }

  OfferData toResponse() {
    return OfferData(
      id: id!,
      supplierProductId: supplierProductId!,
      offerPrice: offerPrice!,
      offerStock: offerStock!,
      status: status!,
      expiresAt: expiresAt!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      supplierProduct: supplierProduct!.toResponse(),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SupplierProductCacheModel {
  final int? id;
  final int? supplierId;
  final int? productId;
  final String? buyPrice;
  final int? stockQuantity;
  final String? status;
  final SupplierCacheModel? supplier;
  final ProductCacheModel? product;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SupplierProductCacheModel({
    this.id,
    this.supplierId,
    this.productId,
    this.buyPrice,
    this.stockQuantity,
    this.status,
    this.supplier,
    this.product,
    this.createdAt,
    this.updatedAt,
  });

  factory SupplierProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$SupplierProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupplierProductCacheModelToJson(this);

  factory SupplierProductCacheModel.fromResponse(SupplierProduct model) {
    return SupplierProductCacheModel(
      id: model.id,
      supplierId: model.supplierId,
      productId: model.productId,
      buyPrice: model.buyPrice,
      stockQuantity: model.stockQuantity,
      status: model.status,
      supplier: SupplierCacheModel.fromResponse(model.supplier),
      product: ProductCacheModel.fromResponse(model.product),
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
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
      supplier: supplier!.toResponse(),
      product: product!.toResponse(),
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}

@JsonSerializable()
class SupplierCacheModel {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  final String? address;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SupplierCacheModel({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory SupplierCacheModel.fromJson(Map<String, dynamic> json) =>
      _$SupplierCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupplierCacheModelToJson(this);

  factory SupplierCacheModel.fromResponse(Supplier s) {
    return SupplierCacheModel(
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

@JsonSerializable(explicitToJson: true)
class ProductCacheModel {
  final int? id;
  final int? supplierId;
  final int? categoryId;
  final String? name;
  final String? description;
  final String? buyPrice;
  final int? stockQuantity;
  final String? status;
  final CategoryCacheModel? category;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProductCacheModel({
    this.id,
    this.supplierId,
    this.categoryId,
    this.name,
    this.description,
    this.buyPrice,
    this.stockQuantity,
    this.status,
    this.category,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductCacheModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCacheModelToJson(this);

  factory ProductCacheModel.fromResponse(Product p) {
    return ProductCacheModel(
      id: p.id,
      supplierId: p.supplierId,
      categoryId: p.categoryId,
      name: p.name,
      description: p.description,
      buyPrice: p.buyPrice,
      stockQuantity: p.stockQuantity,
      status: p.status,
      category: CategoryCacheModel.fromResponse(p.category),
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
      category: category!.toResponse(),
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}

@JsonSerializable()
class CategoryCacheModel {
  final int? id;
  final String? name;
  final String? image;
  final String? imageUrl;
  final List<dynamic>? media;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  CategoryCacheModel({
    this.id,
    this.name,
    this.image,
    this.imageUrl,
    this.media,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoryCacheModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryCacheModelToJson(this);

  factory CategoryCacheModel.fromResponse(Category c) {
    return CategoryCacheModel(
      id: c.id,
      name: c.name,
      image: c.image,
      imageUrl: c.imageUrl,
      media: c.media,
      createdAt: c.createdAt,
      updatedAt: c.updatedAt,
    );
  }

  Category toResponse() {
    return Category(
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
class StatsCacheModel {
  final int? totalOffers;
  final int? availableOffers;

  StatsCacheModel({
    this.totalOffers,
    this.availableOffers,
  });

  factory StatsCacheModel.fromJson(Map<String, dynamic> json) =>
      _$StatsCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatsCacheModelToJson(this);

  factory StatsCacheModel.fromResponse(Stats s) {
    return StatsCacheModel(
      totalOffers: s.totalOffers,
      availableOffers: s.availableOffers,
    );
  }

  Stats toResponse() {
    return Stats(
      totalOffers: totalOffers!,
      availableOffers: availableOffers!,
    );
  }
}

@JsonSerializable()
class PaginationCacheModel {
  final int? perPage;
  final int? currentPage;
  final int? total;
  final int? lastPage;

  PaginationCacheModel({
    this.perPage,
    this.currentPage,
    this.total,
    this.lastPage,
  });

  factory PaginationCacheModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationCacheModelToJson(this);

  factory PaginationCacheModel.fromResponse(Pagination p) {
    return PaginationCacheModel(
      perPage: p.perPage,
      currentPage: p.currentPage,
      total: p.total,
      lastPage: p.lastPage,
    );
  }

  Pagination toResponse() {
    return Pagination(
      perPage: perPage!,
      currentPage: currentPage!,
      total: total!,
      lastPage: lastPage!,
    );
  }
}
