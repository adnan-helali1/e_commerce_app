import 'package:json_annotation/json_annotation.dart';

part 'store_product_response.g.dart';

@JsonSerializable()
class StoreProductsResponse {
  const StoreProductsResponse({required this.data, this.message});

  final StoreProductsPage data;
  final String? message;

  factory StoreProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreProductsResponseFromJson(json);
}

@JsonSerializable()
class StoreProductsPage {
  const StoreProductsPage(
      {required this.data, this.currentPage, this.lastPage});

  final List<SupplierProductItem> data;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'last_page')
  final int? lastPage;

  factory StoreProductsPage.fromJson(Map<String, dynamic> json) =>
      _$StoreProductsPageFromJson(json);
}

@JsonSerializable()
class StoreProductDetailResponse {
  const StoreProductDetailResponse({required this.data, this.message});

  final SupplierProductItem data;
  final String? message;

  factory StoreProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreProductDetailResponseFromJson(json);
}

@JsonSerializable()
class SupplierProductItem {
  const SupplierProductItem({
    required this.id,
    this.imageUrl,
    this.product,
    this.buyPrice,
    this.stockQuantity,
    this.status,
  });

  final int id;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final MasterProductItem? product;
  @JsonKey(name: 'buy_price')
  final String? buyPrice;
  @JsonKey(name: 'stock_quantity')
  final int? stockQuantity;
  final String? status;

  String? get displayImageUrl => imageUrl ?? product?.imageUrl;

  factory SupplierProductItem.fromJson(Map<String, dynamic> json) =>
      _$SupplierProductItemFromJson(json);
}

@JsonSerializable()
class MasterProductItem {
  const MasterProductItem(
      {required this.id, this.name, this.description, this.imageUrl});

  final int id;
  final String? name;
  final String? description;
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  factory MasterProductItem.fromJson(Map<String, dynamic> json) =>
      _$MasterProductItemFromJson(json);
}
