import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/home/ui/widgets/home_metrics_section.dart';
import 'package:B2B/app/features/home/ui/widgets/home_quick_actions_section.dart';
import 'package:B2B/app/features/home/ui/widgets/home_ui_models.dart';
import 'package:B2B/app/features/home/ui/widgets/home_welcome_panel.dart';
import 'package:B2B/app/features/home/ui/widgets/recent_orders_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _metrics = [
    HomeMetric(
      title: 'Revenue Today',
      value: '\$28.44',
      note: '+12.5% increase',
      icon: Icons.attach_money_rounded,
      tone: HomeMetricTone.success,
    ),
    HomeMetric(
      title: 'Total Orders',
      value: '3',
      icon: Icons.shopping_cart_outlined,
      tone: HomeMetricTone.primary,
    ),
    HomeMetric(
      title: 'Sales Today',
      value: '2',
      note: '+8.3% increase',
      icon: Icons.trending_up_rounded,
      tone: HomeMetricTone.info,
    ),
    HomeMetric(
      title: 'Profit Margin',
      value: '37.5%',
      icon: Icons.inventory_2_outlined,
      tone: HomeMetricTone.warning,
    ),
    HomeMetric(
      title: 'Low Stock',
      value: '2',
      note: 'Items need restocking',
      icon: Icons.warning_amber_rounded,
      tone: HomeMetricTone.warning,
    ),
    HomeMetric(
      title: 'Pending',
      value: '1',
      note: 'Orders to process',
      icon: Icons.check_circle_outline_rounded,
      tone: HomeMetricTone.info,
    ),
  ];

  static const _recentOrders = [
    RecentOrderPreview(
      id: '#PO-2026-001',
      status: 'Approved',
      supplier: 'FreshDairy Co.',
      date: '2026-05-01',
      itemCount: 2,
      total: '\$251.00',
      lines: [
        OrderLinePreview(
            title: '50x Premium Organic Milk 1L', amount: '\$125.00'),
        OrderLinePreview(
            title: '30x Free Range Eggs (12pk)', amount: '\$126.00'),
      ],
    ),
    RecentOrderPreview(
      id: '#PO-2026-002',
      status: 'Preparing',
      supplier: 'GreenFarm Suppliers',
      date: '2026-05-01',
      itemCount: 2,
      total: '\$281.00',
      lines: [
        OrderLinePreview(title: '40x Greek Yogurt 500g', amount: '\$140.00'),
        OrderLinePreview(
            title: '60x Premium Organic Milk 1L', amount: '\$141.00'),
      ],
    ),
    RecentOrderPreview(
      id: '#PO-2026-003',
      status: 'Pending',
      supplier: 'BakeMaster Ltd.',
      date: '2026-05-02',
      itemCount: 1,
      total: '\$180.00',
      lines: [
        OrderLinePreview(title: '100x Whole Wheat Bread', amount: '\$180.00'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeWelcomePanel(),
              verticalSpace(16),
              const HomeMetricsSection(metrics: _metrics),
              verticalSpace(16),
              const RecentOrdersSection(orders: _recentOrders),
              verticalSpace(4),
              const HomeQuickActionsSection(),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
