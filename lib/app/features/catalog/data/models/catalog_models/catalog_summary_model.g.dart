// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogSummary _$CatalogSummaryFromJson(Map<String, dynamic> json) =>
    _CatalogSummary(
      totalProducts: (json['total_products'] as num).toInt(),
      activeProducts: (json['active_products'] as num).toInt(),
      totalProfit: (json['total_profit'] as num).toDouble(),
    );

Map<String, dynamic> _$CatalogSummaryToJson(_CatalogSummary instance) =>
    <String, dynamic>{
      'total_products': instance.totalProducts,
      'active_products': instance.activeProducts,
      'total_profit': instance.totalProfit,
    };
