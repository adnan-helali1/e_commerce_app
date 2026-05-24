// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDashboardCacheModel _$HomeDashboardCacheModelFromJson(
        Map<String, dynamic> json) =>
    HomeDashboardCacheModel(
      revenueToday: (json['revenue_today'] as num?)?.toDouble(),
      revenueChangePercent:
          (json['revenue_change_percent'] as num?)?.toDouble(),
      revenueTrend: json['revenue_trend'] as String?,
      totalOrders: (json['total_orders'] as num?)?.toInt(),
      salesToday: (json['sales_today'] as num?)?.toInt(),
      salesChangePercent: (json['sales_change_percent'] as num?)?.toDouble(),
      salesTrend: json['sales_trend'] as String?,
      profitMargin: (json['profit_margin'] as num?)?.toDouble(),
      lowStock: (json['low_stock'] as num?)?.toInt(),
      pendingOrders: (json['pending_orders'] as num?)?.toInt(),
      recentOrders: (json['recent_orders'] as List<dynamic>?)
          ?.map((e) =>
              HomeRecentOrderCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cachedAt: DateTime.parse(json['cached_at'] as String),
    );

Map<String, dynamic> _$HomeDashboardCacheModelToJson(
        HomeDashboardCacheModel instance) =>
    <String, dynamic>{
      'revenue_today': instance.revenueToday,
      'revenue_change_percent': instance.revenueChangePercent,
      'revenue_trend': instance.revenueTrend,
      'total_orders': instance.totalOrders,
      'sales_today': instance.salesToday,
      'sales_change_percent': instance.salesChangePercent,
      'sales_trend': instance.salesTrend,
      'profit_margin': instance.profitMargin,
      'low_stock': instance.lowStock,
      'pending_orders': instance.pendingOrders,
      'recent_orders': instance.recentOrders?.map((e) => e.toJson()).toList(),
      'cached_at': instance.cachedAt.toIso8601String(),
    };

HomeRecentOrderCacheModel _$HomeRecentOrderCacheModelFromJson(
        Map<String, dynamic> json) =>
    HomeRecentOrderCacheModel(
      id: json['id'] as String?,
      code: json['code'] as String?,
      type: json['type'] as String?,
      partyName: json['party_name'] as String?,
      customerName: json['customer_name'] as String?,
      supplierName: json['supplier_name'] as String?,
      status: json['status'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      itemsCount: (json['items_count'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              HomeOrderItemCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$HomeRecentOrderCacheModelToJson(
        HomeRecentOrderCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'type': instance.type,
      'party_name': instance.partyName,
      'customer_name': instance.customerName,
      'supplier_name': instance.supplierName,
      'status': instance.status,
      'total': instance.total,
      'items_count': instance.itemsCount,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt,
    };

HomeOrderItemCacheModel _$HomeOrderItemCacheModelFromJson(
        Map<String, dynamic> json) =>
    HomeOrderItemCacheModel(
      productName: json['product_name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num?)?.toDouble(),
      lineTotal: (json['line_total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HomeOrderItemCacheModelToJson(
        HomeOrderItemCacheModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'line_total': instance.lineTotal,
    };
