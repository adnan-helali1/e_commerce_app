// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreProductsResponse _$StoreProductsResponseFromJson(
        Map<String, dynamic> json) =>
    StoreProductsResponse(
      data: StoreProductsPage.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StoreProductsResponseToJson(
        StoreProductsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

StoreProductsPage _$StoreProductsPageFromJson(Map<String, dynamic> json) =>
    StoreProductsPage(
      data: (json['data'] as List<dynamic>)
          .map((e) => SupplierProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StoreProductsPageToJson(StoreProductsPage instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };

StoreProductDetailResponse _$StoreProductDetailResponseFromJson(
        Map<String, dynamic> json) =>
    StoreProductDetailResponse(
      data: SupplierProductItem.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StoreProductDetailResponseToJson(
        StoreProductDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

SupplierProductItem _$SupplierProductItemFromJson(Map<String, dynamic> json) =>
    SupplierProductItem(
      id: (json['id'] as num).toInt(),
      imageUrl: json['image_url'] as String?,
      product: json['product'] == null
          ? null
          : MasterProductItem.fromJson(json['product'] as Map<String, dynamic>),
      buyPrice: json['buy_price'] as String?,
      stockQuantity: (json['stock_quantity'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$SupplierProductItemToJson(
        SupplierProductItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'product': instance.product,
      'buy_price': instance.buyPrice,
      'stock_quantity': instance.stockQuantity,
      'status': instance.status,
    };

MasterProductItem _$MasterProductItemFromJson(Map<String, dynamic> json) =>
    MasterProductItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$MasterProductItemToJson(MasterProductItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
