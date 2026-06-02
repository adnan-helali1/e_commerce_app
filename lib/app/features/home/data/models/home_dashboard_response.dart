import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'home_dashboard_response.g.dart';

@JsonSerializable()
class HomeDashboardResponse {
  @JsonKey(name: 'revenue_today')
  double? revenueToday;
  @JsonKey(name: 'revenue_change_percent')
  double? revenueChangePercent;
  @JsonKey(name: 'revenue_trend')
  String? revenueTrend;
  @JsonKey(name: 'total_orders')
  int? totalOrders;
  @JsonKey(name: 'sales_today')
  int? salesToday;
  @JsonKey(name: 'sales_change_percent')
  double? salesChangePercent;
  @JsonKey(name: 'sales_trend')
  String? salesTrend;
  @JsonKey(name: 'profit_margin')
  double? profitMargin;
  @JsonKey(name: 'low_stock')
  int? lowStock;
  @JsonKey(name: 'pending_orders')
  int? pendingOrders;
  @JsonKey(name: 'recent_orders')
  List<HomeRecentOrder>? recentOrders;

  HomeDashboardResponse({
    this.revenueToday,
    this.revenueChangePercent,
    this.revenueTrend,
    this.totalOrders,
    this.salesToday,
    this.salesChangePercent,
    this.salesTrend,
    this.profitMargin,
    this.lowStock,
    this.pendingOrders,
    this.recentOrders,
  });

  factory HomeDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDashboardResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HomeDashboardResponse &&
        jsonEncode(toJson()) == jsonEncode(other.toJson());
  }

  @override
  int get hashCode => jsonEncode(toJson()).hashCode;
}

@JsonSerializable()
class HomeRecentOrder {
  String? id;
  String? code;
  String? type;
  @JsonKey(name: 'party_name')
  String? partyName;
  @JsonKey(name: 'customer_name')
  String? customerName;
  @JsonKey(name: 'supplier_name')
  String? supplierName;
  String? status;
  double? total;
  @JsonKey(name: 'items_count')
  int? itemsCount;
  @JsonKey(name: 'items')
  List<HomeOrderItem>? items;
  @JsonKey(name: 'created_at')
  String? createdAt;

  HomeRecentOrder({
    this.id,
    this.code,
    this.type,
    this.partyName,
    this.customerName,
    this.supplierName,
    this.status,
    this.total,
    this.itemsCount,
    this.items,
    this.createdAt,
  });

  factory HomeRecentOrder.fromJson(Map<String, dynamic> json) =>
      _$HomeRecentOrderFromJson(json);

  Map<String, dynamic> toJson() => _$HomeRecentOrderToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HomeRecentOrder &&
        jsonEncode(toJson()) == jsonEncode(other.toJson());
  }

  @override
  int get hashCode => jsonEncode(toJson()).hashCode;
}

@JsonSerializable()
class HomeOrderItem {
  @JsonKey(name: 'product_name')
  String? productName;
  int? quantity;
  @JsonKey(name: 'unit_price')
  double? unitPrice;
  @JsonKey(name: 'line_total')
  double? lineTotal;

  HomeOrderItem(
      {this.productName, this.quantity, this.unitPrice, this.lineTotal});

  factory HomeOrderItem.fromJson(Map<String, dynamic> json) =>
      _$HomeOrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$HomeOrderItemToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HomeOrderItem &&
        jsonEncode(toJson()) == jsonEncode(other.toJson());
  }

  @override
  int get hashCode => jsonEncode(toJson()).hashCode;
}
