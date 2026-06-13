// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models/active_offers_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActiveOffersSummary _$ActiveOffersSummaryFromJson(Map<String, dynamic> json) =>
    _ActiveOffersSummary(
      totalProducts: (json['total_products'] as num).toInt(),
      activeProducts: (json['active_products'] as num).toInt(),
      totalProfit: (json['total_profit'] as num).toDouble(),
    );

Map<String, dynamic> _$ActiveOffersSummaryToJson(
        _ActiveOffersSummary instance) =>
    <String, dynamic>{
      'total_products': instance.totalProducts,
      'active_products': instance.activeProducts,
      'total_profit': instance.totalProfit,
    };
