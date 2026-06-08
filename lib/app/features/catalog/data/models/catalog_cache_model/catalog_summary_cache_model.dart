import 'package:json_annotation/json_annotation.dart';

part 'catalog_summary_cache_model.g.dart';

@JsonSerializable()
class CatalogSummaryCacheModel {
  @JsonKey(name: 'total_products')
  final int totalProducts;

  @JsonKey(name: 'active_products')
  final int activeProducts;

  @JsonKey(name: 'total_profit')
  final double totalProfit;

  CatalogSummaryCacheModel({
    required this.totalProducts,
    required this.activeProducts,
    required this.totalProfit,
  });

  factory CatalogSummaryCacheModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogSummaryCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogSummaryCacheModelToJson(this);
}
