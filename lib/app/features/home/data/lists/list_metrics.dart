import 'package:B2B/app/core/helpers/colors_changer_extension.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/models/home_ui_models.dart';
import 'package:B2B/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

List<HomeMetric> mapMetrics(HomeDashboardResponse r, AppLocalizations l10n) {
  return [
    HomeMetric(
      title: l10n.revenueToday,
      value: r.revenueToday != null
          ? '\$${r.revenueToday!.toStringAsFixed(2)}'
          : '-',
      note: _changeNote(r.revenueTrend, r.revenueChangePercent, l10n),
      icon: Icons.attach_money_rounded,
      tone: HomeMetricTone.success,
    ),
    HomeMetric(
      title: l10n.totalOrders,
      value: r.totalOrders?.toString() ?? '-',
      icon: Icons.shopping_cart_outlined,
      tone: HomeMetricTone.primary,
    ),
    HomeMetric(
      title: l10n.salesToday,
      value: r.salesToday?.toString() ?? '-',
      note: _changeNote(r.salesTrend, r.salesChangePercent, l10n),
      icon: Icons.trending_up_rounded,
      tone: salesTodayTone(r.salesToday),
    ),
    HomeMetric(
      title: l10n.profitMargin,
      value: r.profitMargin != null ? '${r.profitMargin}%' : '-',
      icon: Icons.inventory_2_outlined,
      tone: HomeMetricTone.warning,
    ),
    HomeMetric(
      title: l10n.lowStock,
      value: r.lowStock?.toString() ?? '-',
      note: l10n.itemsNeedRestocking,
      icon: Icons.warning_amber_rounded,
      tone: lowStockTone(r.lowStock),
    ),
    HomeMetric(
      title: l10n.pending,
      value: r.pendingOrders?.toString() ?? '-',
      note: l10n.ordersToProcess,
      icon: Icons.check_circle_outline_rounded,
      tone: pendingOrdersTone(r.pendingOrders),
    ),
  ];
}

String? _changeNote(String? trend, double? percent, AppLocalizations l10n) {
  if (percent == null || trend == null || trend.isEmpty) {
    return null;
  }

  final normalizedTrend = trend.toLowerCase();
  final label = normalizedTrend == 'down'
      ? l10n.metricDecrease
      : l10n.metricIncrease;
  return l10n.metricChangeNote(percent.toStringAsFixed(1), label);
}
