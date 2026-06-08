import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:B2B/app/features/offers/data/models/offers_cache_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'catalog_item_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogItemCacheModel {
  final int? id;
  final int? storeId;
  final int? productId;
  final int? supplierProductId;
  final String? sellPrice;
  final bool? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final SupplierProductCacheModel? supplierProduct;

  CatalogItemCacheModel({
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

  factory CatalogItemCacheModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogItemCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemCacheModelToJson(this);

  factory CatalogItemCacheModel.fromResponse(
    CatalogItem item,
  ) {
    return CatalogItemCacheModel(
      id: item.id,
      storeId: item.storeId,
      productId: item.productId,
      supplierProductId: item.supplierProductId,
      sellPrice: item.sellPrice,
      isActive: item.isActive,
      createdAt: item.createdAt,
      updatedAt: item.updatedAt,
      supplierProduct: SupplierProductCacheModel.fromResponse(
        item.supplierProduct,
      ),
    );
  }

  CatalogItem toResponse() {
    return CatalogItem(
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
