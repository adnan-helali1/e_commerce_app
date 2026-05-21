import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/home/ui/widgets/home_ui_models.dart';
import 'package:flutter/material.dart';

HomeMetricTone salesTodayTone(int? salesToday) {
  if (salesToday == null) return HomeMetricTone.info;
  if (salesToday < 2) return HomeMetricTone.error;
  if (salesToday < 5) return HomeMetricTone.warning;
  if (salesToday <= 10) return HomeMetricTone.info;
  return HomeMetricTone.success;
}

HomeMetricTone lowStockTone(int? lowStock) {
  if (lowStock == null) return HomeMetricTone.info;
  if (lowStock <= 2) return HomeMetricTone.error;
  if (lowStock <= 5) return HomeMetricTone.warning;
  return HomeMetricTone.success;
}

HomeMetricTone pendingOrdersTone(int? pendingOrders) {
  if (pendingOrders == null) return HomeMetricTone.info;
  if (pendingOrders > 8) return HomeMetricTone.error;
  if (pendingOrders > 3) return HomeMetricTone.warning;
  return HomeMetricTone.info;
}

Color homeRecentOrderStatusColor(BuildContext context, String status) {
  switch (status.trim().toLowerCase()) {
    case 'paid':
    case 'received':
      return context.appColors.success;
    case 'submitted':
      return context.appColors.info;
    case 'draft':
      return context.appColors.warning;
    default:
      return context.cs.onSurfaceVariant;
  }
}
