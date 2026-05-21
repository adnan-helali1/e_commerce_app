import 'package:json_annotation/json_annotation.dart';

part 'home_dashboard_response.g.dart';

@JsonSerializable()
class HomeDashboardResponse {
  @JsonKey(name: 'revenue_today')
  double? revenueToday;
  @JsonKey(name: 'total_orders')
  int? totalOrders;
  @JsonKey(name: 'sales_today')
  int? salesToday;
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
    this.totalOrders,
    this.salesToday,
    this.profitMargin,
    this.lowStock,
    this.pendingOrders,
    this.recentOrders,
  });

  factory HomeDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardResponseFromJson(json);
}

@JsonSerializable()
class HomeRecentOrder {
  String? id;
  String? code;
  String? status;
  double? total;
  @JsonKey(name: 'created_at')
  String? createdAt;

  HomeRecentOrder({
    this.id,
    this.code,
    this.status,
    this.total,
    this.createdAt,
  });

  factory HomeRecentOrder.fromJson(Map<String, dynamic> json) =>
      _$HomeRecentOrderFromJson(json);
}
