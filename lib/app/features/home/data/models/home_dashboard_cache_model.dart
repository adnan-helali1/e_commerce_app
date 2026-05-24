import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_dashboard_cache_model.g.dart';

DateTime _cachedAtFromJson(String? s) =>
    DateTime.tryParse(s ?? '') ?? DateTime.fromMillisecondsSinceEpoch(0);

String _cachedAtToJson(DateTime dt) => dt.toIso8601String();

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HomeDashboardCacheModel {
  final double? revenueToday;
  final double? revenueChangePercent;
  final String? revenueTrend;
  final int? totalOrders;
  final int? salesToday;
  final double? salesChangePercent;
  final String? salesTrend;
  final double? profitMargin;
  final int? lowStock;
  final int? pendingOrders;
  final List<HomeRecentOrderCacheModel>? recentOrders;
  final DateTime cachedAt;

  HomeDashboardCacheModel({
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
    required this.cachedAt,
  });

  factory HomeDashboardCacheModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardCacheModelFromJson(json);

  factory HomeDashboardCacheModel.fromDashboard(
    HomeDashboardResponse response, {
    DateTime? cachedAt,
  }) {
    return HomeDashboardCacheModel(
      revenueToday: response.revenueToday,
      revenueChangePercent: response.revenueChangePercent,
      revenueTrend: response.revenueTrend,
      totalOrders: response.totalOrders,
      salesToday: response.salesToday,
      salesChangePercent: response.salesChangePercent,
      salesTrend: response.salesTrend,
      profitMargin: response.profitMargin,
      lowStock: response.lowStock,
      pendingOrders: response.pendingOrders,
      recentOrders: response.recentOrders
          ?.map(HomeRecentOrderCacheModel.fromRecentOrder)
          .toList(),
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() => _$HomeDashboardCacheModelToJson(this);

  HomeDashboardResponse toDashboardResponse() {
    return HomeDashboardResponse(
      revenueToday: revenueToday,
      revenueChangePercent: revenueChangePercent,
      revenueTrend: revenueTrend,
      totalOrders: totalOrders,
      salesToday: salesToday,
      salesChangePercent: salesChangePercent,
      salesTrend: salesTrend,
      profitMargin: profitMargin,
      lowStock: lowStock,
      pendingOrders: pendingOrders,
      recentOrders:
          recentOrders?.map((order) => order.toRecentOrder()).toList(),
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HomeRecentOrderCacheModel {
  final String? id;
  final String? code;
  final String? type;
  final String? partyName;
  final String? customerName;
  final String? supplierName;
  final String? status;
  final double? total;
  final int? itemsCount;
  final List<HomeOrderItemCacheModel>? items;
  final String? createdAt;

  HomeRecentOrderCacheModel({
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

  factory HomeRecentOrderCacheModel.fromJson(Map<String, dynamic> json) =>
      _$HomeRecentOrderCacheModelFromJson(json);

  factory HomeRecentOrderCacheModel.fromRecentOrder(HomeRecentOrder order) {
    return HomeRecentOrderCacheModel(
      id: order.id,
      code: order.code,
      type: order.type,
      partyName: order.partyName,
      customerName: order.customerName,
      supplierName: order.supplierName,
      status: order.status,
      total: order.total,
      itemsCount: order.itemsCount,
      items: order.items?.map(HomeOrderItemCacheModel.fromOrderItem).toList(),
      createdAt: order.createdAt,
    );
  }

  Map<String, dynamic> toJson() => _$HomeRecentOrderCacheModelToJson(this);

  HomeRecentOrder toRecentOrder() {
    return HomeRecentOrder(
      id: id,
      code: code,
      type: type,
      partyName: partyName,
      customerName: customerName,
      supplierName: supplierName,
      status: status,
      total: total,
      itemsCount: itemsCount,
      items: items?.map((item) => item.toOrderItem()).toList(),
      createdAt: createdAt,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HomeOrderItemCacheModel {
  final String? productName;
  final int? quantity;
  final double? unitPrice;
  final double? lineTotal;

  HomeOrderItemCacheModel({
    this.productName,
    this.quantity,
    this.unitPrice,
    this.lineTotal,
  });

  factory HomeOrderItemCacheModel.fromJson(Map<String, dynamic> json) =>
      _$HomeOrderItemCacheModelFromJson(json);

  factory HomeOrderItemCacheModel.fromOrderItem(HomeOrderItem item) {
    return HomeOrderItemCacheModel(
      productName: item.productName,
      quantity: item.quantity,
      unitPrice: item.unitPrice,
      lineTotal: item.lineTotal,
    );
  }

  Map<String, dynamic> toJson() => _$HomeOrderItemCacheModelToJson(this);

  HomeOrderItem toOrderItem() {
    return HomeOrderItem(
      productName: productName,
      quantity: quantity,
      unitPrice: unitPrice,
      lineTotal: lineTotal,
    );
  }
}
