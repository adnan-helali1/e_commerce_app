// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_summary_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogSummaryCacheModel _$CatalogSummaryCacheModelFromJson(
        Map<String, dynamic> json) =>
    CatalogSummaryCacheModel(
      totalProducts: (json['total_products'] as num).toInt(),
      activeProducts: (json['active_products'] as num).toInt(),
      totalProfit: (json['total_profit'] as num).toDouble(),
    );

Map<String, dynamic> _$CatalogSummaryCacheModelToJson(
        CatalogSummaryCacheModel instance) =>
    <String, dynamic>{
      'total_products': instance.totalProducts,
      'active_products': instance.activeProducts,
      'total_profit': instance.totalProfit,
    };
