import 'package:B2B/app/core/helpers/colors_changer_extension.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/models/home_ui_models.dart';
import 'package:flutter/material.dart';

List<HomeMetric> mapMetrics(HomeDashboardResponse r) {
  return [
    HomeMetric(
      title: 'Revenue Today',
      value: r.revenueToday != null
          ? '\$${r.revenueToday!.toStringAsFixed(2)}'
          : '-',
      note: _changeNote(r.revenueTrend, r.revenueChangePercent),
      icon: Icons.attach_money_rounded,
      tone: HomeMetricTone.success,
    ),
    HomeMetric(
      title: 'Total Orders',
      value: r.totalOrders?.toString() ?? '-',
      icon: Icons.shopping_cart_outlined,
      tone: HomeMetricTone.primary,
    ),
    HomeMetric(
      title: 'Sales Today',
      value: r.salesToday?.toString() ?? '-',
      note: _changeNote(r.salesTrend, r.salesChangePercent),
      icon: Icons.trending_up_rounded,
      tone: salesTodayTone(r.salesToday),
    ),
    HomeMetric(
      title: 'Profit Margin',
      value: r.profitMargin != null ? '${r.profitMargin}%' : '-',
      icon: Icons.inventory_2_outlined,
      tone: HomeMetricTone.warning,
    ),
    HomeMetric(
      title: 'Low Stock',
      value: r.lowStock?.toString() ?? '-',
      note: 'Items need restocking',
      icon: Icons.warning_amber_rounded,
      tone: lowStockTone(r.lowStock),
    ),
    HomeMetric(
      title: 'Pending',
      value: r.pendingOrders?.toString() ?? '-',
      note: 'Orders to process',
      icon: Icons.check_circle_outline_rounded,
      tone: pendingOrdersTone(r.pendingOrders),
    ),
  ];
}

String? _changeNote(String? trend, double? percent) {
  if (percent == null || trend == null || trend.isEmpty) {
    return null;
  }

  final normalizedTrend = trend.toLowerCase();
  final label = normalizedTrend == 'down' ? ' decrease' : ' increase';
  return '${percent.toStringAsFixed(1)}% $label';
}
