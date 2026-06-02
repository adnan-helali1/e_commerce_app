import 'package:json_annotation/json_annotation.dart';

part 'offers_response.g.dart';

// refactor this to sub models
@JsonSerializable(explicitToJson: true)
class OffersResponse {
  final List<OfferData> data;
  final Stats stats;
  final Pagination pagination;
  final String message;
  final dynamic errors;

  OffersResponse({
    required this.data,
    required this.stats,
    required this.pagination,
    required this.message,
    this.errors,
  });

  factory OffersResponse.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OffersResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OfferData {
  final int id;

  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;

  @JsonKey(name: 'offer_price')
  final String offerPrice;

  @JsonKey(name: 'offer_stock')
  final int offerStock;

  final String status;

  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @JsonKey(name: 'supplier_product')
  final SupplierProduct supplierProduct;

  OfferData({
    required this.id,
    required this.supplierProductId,
    required this.offerPrice,
    required this.offerStock,
    required this.status,
    required this.expiresAt,
    required this.createdAt,
    required this.updatedAt,
    required this.supplierProduct,
  });

  factory OfferData.fromJson(Map<String, dynamic> json) =>
      _$OfferDataFromJson(json);

  Map<String, dynamic> toJson() => _$OfferDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupplierProduct {
  final int id;

  @JsonKey(name: 'supplier_id')
  final int supplierId;

  @JsonKey(name: 'product_id')
  final int productId;

  @JsonKey(name: 'buy_price')
  final String buyPrice;

  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;

  final String status;

  final Supplier supplier;
  final Product product;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  SupplierProduct({
    required this.id,
    required this.supplierId,
    required this.productId,
    required this.buyPrice,
    required this.stockQuantity,
    required this.status,
    required this.supplier,
    required this.product,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SupplierProduct.fromJson(Map<String, dynamic> json) =>
      _$SupplierProductFromJson(json);

  Map<String, dynamic> toJson() => _$SupplierProductToJson(this);
}

@JsonSerializable()
class Supplier {
  final int id;
  final String name;
  final String? phone;
  final String? email;
  final String? address;
  final String status;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Supplier({
    required this.id,
    required this.name,
    this.phone,
    this.email,
    this.address,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);

  Map<String, dynamic> toJson() => _$SupplierToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Product {
  final int id;

  @JsonKey(name: 'supplier_id')
  final int supplierId;

  @JsonKey(name: 'category_id')
  final int categoryId;

  final String name;
  final String? description;

  @JsonKey(name: 'buy_price')
  final String buyPrice;

  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;

  final String status;

  final Category category;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.supplierId,
    required this.categoryId,
    required this.name,
    this.description,
    required this.buyPrice,
    required this.stockQuantity,
    required this.status,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class Category {
  final int id;
  final String name;
  final String? image;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  final List<dynamic> media;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Category({
    required this.id,
    required this.name,
    this.image,
    this.imageUrl,
    required this.media,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Stats {
  @JsonKey(name: 'total_offers')
  final int totalOffers;

  @JsonKey(name: 'available_offers')
  final int availableOffers;

  Stats({
    required this.totalOffers,
    required this.availableOffers,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class Pagination {
  @JsonKey(name: 'per_page')
  final int perPage;

  @JsonKey(name: 'current_page')
  final int currentPage;

  final int total;

  @JsonKey(name: 'last_page')
  final int lastPage;

  Pagination({
    required this.perPage,
    required this.currentPage,
    required this.total,
    required this.lastPage,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
