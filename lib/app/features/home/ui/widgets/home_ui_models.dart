import 'package:flutter/material.dart';

class HomeMetric {
  final String title;
  final String value;
  final String? note;
  final IconData icon;
  final HomeMetricTone tone;

  const HomeMetric({
    required this.title,
    required this.value,
    required this.icon,
    required this.tone,
    this.note,
  });
}

enum HomeMetricTone { success, primary, info, warning }

class RecentOrderPreview {
  final String id;
  final String status;
  final String supplier;
  final List<OrderLinePreview> lines;
  final String date;
  final int itemCount;
  final String total;

  const RecentOrderPreview({
    required this.id,
    required this.status,
    required this.supplier,
    required this.lines,
    required this.date,
    required this.itemCount,
    required this.total,
  });
}

class OrderLinePreview {
  final String title;
  final String amount;

  const OrderLinePreview({
    required this.title,
    required this.amount,
  });
}
