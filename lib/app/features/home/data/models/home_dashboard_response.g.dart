// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDashboardResponse _$HomeDashboardResponseFromJson(
        Map<String, dynamic> json) =>
    HomeDashboardResponse(
      revenueToday: (json['revenue_today'] as num?)?.toDouble(),
      totalOrders: (json['total_orders'] as num?)?.toInt(),
      salesToday: (json['sales_today'] as num?)?.toInt(),
      profitMargin: (json['profit_margin'] as num?)?.toDouble(),
      lowStock: (json['low_stock'] as num?)?.toInt(),
      pendingOrders: (json['pending_orders'] as num?)?.toInt(),
      recentOrders: (json['recent_orders'] as List<dynamic>?)
          ?.map((e) => HomeRecentOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDashboardResponseToJson(
        HomeDashboardResponse instance) =>
    <String, dynamic>{
      'revenue_today': instance.revenueToday,
      'total_orders': instance.totalOrders,
      'sales_today': instance.salesToday,
      'profit_margin': instance.profitMargin,
      'low_stock': instance.lowStock,
      'pending_orders': instance.pendingOrders,
      'recent_orders': instance.recentOrders,
    };

HomeRecentOrder _$HomeRecentOrderFromJson(Map<String, dynamic> json) =>
    HomeRecentOrder(
      id: json['id'] as String?,
      code: json['code'] as String?,
      status: json['status'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$HomeRecentOrderToJson(HomeRecentOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'status': instance.status,
      'total': instance.total,
      'created_at': instance.createdAt,
    };
