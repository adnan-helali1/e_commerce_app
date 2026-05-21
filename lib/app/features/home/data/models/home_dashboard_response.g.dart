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
      type: json['type'] as String?,
      partyName: json['party_name'] as String?,
      customerName: json['customer_name'] as String?,
      supplierName: json['supplier_name'] as String?,
      status: json['status'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      itemsCount: (json['items_count'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => HomeOrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$HomeRecentOrderToJson(HomeRecentOrder instance) =>
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
      'items': instance.items,
      'created_at': instance.createdAt,
    };

HomeOrderItem _$HomeOrderItemFromJson(Map<String, dynamic> json) =>
    HomeOrderItem(
      productName: json['product_name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unit_price'] as num?)?.toDouble(),
      lineTotal: (json['line_total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HomeOrderItemToJson(HomeOrderItem instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'line_total': instance.lineTotal,
    };
