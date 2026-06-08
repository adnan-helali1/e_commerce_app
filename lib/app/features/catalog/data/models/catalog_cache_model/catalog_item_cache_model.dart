import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_cache_model.g.dart';

@JsonSerializable()
class CatalogItemCacheModel {
  final int id;
  final String name;
  final String supplierName;
  final double buyPrice;
  final double sellPrice;
  final double profitPerUnit;
  final double profitPercentage;
  final int stock;
  final double totalProfit;
  final bool isActive;
  final String? imageUrl;

  CatalogItemCacheModel({
    required this.id,
    required this.name,
    required this.supplierName,
    required this.buyPrice,
    required this.sellPrice,
    required this.profitPerUnit,
    required this.profitPercentage,
    required this.stock,
    required this.totalProfit,
    required this.isActive,
    this.imageUrl,
  });

  /// JSON
  factory CatalogItemCacheModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemCacheModelToJson(this);

  /// 🔥 FROM API MODEL → CACHE
  factory CatalogItemCacheModel.fromResponse(CatalogItem model) {
    return CatalogItemCacheModel(
      id: model.id,
      name: model.name,
      supplierName: model.supplierName,
      buyPrice: model.buyPrice,
      sellPrice: model.sellPrice,
      profitPerUnit: model.profitPerUnit,
      profitPercentage: model.profitPercentage,
      stock: model.stock,
      totalProfit: model.totalProfit,
      isActive: model.isActive,
      imageUrl: model.imageUrl,
    );
  }

  /// 🔥 CACHE → DOMAIN MODEL
  CatalogItem toResponse() {
    return CatalogItem(
      id: id,
      name: name,
      supplierName: supplierName,
      buyPrice: buyPrice,
      sellPrice: sellPrice,
      profitPerUnit: profitPerUnit,
      profitPercentage: profitPercentage,
      stock: stock,
      totalProfit: totalProfit,
      isActive: isActive,
      imageUrl: imageUrl,
    );
  }
}
