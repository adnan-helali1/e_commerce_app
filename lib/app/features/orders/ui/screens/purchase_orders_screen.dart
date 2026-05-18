import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/widgets/b2b_app_bar.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_filter_bar.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_result_summary.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_summary_header.dart';
import 'package:B2B/app/features/orders/ui/widgets/purchase_order_card.dart';
import 'package:B2B/app/features/orders/ui/widgets/purchase_order_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseOrdersScreen extends StatefulWidget {
  const PurchaseOrdersScreen({super.key});

  @override
  State<PurchaseOrdersScreen> createState() => _PurchaseOrdersScreenState();
}

class _PurchaseOrdersScreenState extends State<PurchaseOrdersScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final List<bool> _expandedStates = [false, false, false];

  static const _orders = [
    PurchaseOrderUiModel(
      id: '#PO-2026-001',
      status: 'Approved',
      supplier: 'FreshDairy Co.',
      date: '2026-05-01',
      itemCount: 2,
      total: '\$251.00',
      lines: [
        PurchaseOrderLineUiModel(
            title: '50x Premium Organic Milk 1L', amount: '\$125.00'),
        PurchaseOrderLineUiModel(
            title: '30x Free Range Eggs (12pk)', amount: '\$126.00'),
      ],
    ),
    PurchaseOrderUiModel(
      id: '#PO-2026-002',
      status: 'Preparing',
      supplier: 'GreenFarm Suppliers',
      date: '2026-05-01',
      itemCount: 2,
      total: '\$281.00',
      lines: [
        PurchaseOrderLineUiModel(
            title: '40x Greek Yogurt 500g', amount: '\$140.00'),
        PurchaseOrderLineUiModel(
            title: '60x Premium Organic Milk 1L', amount: '\$141.00'),
      ],
    ),
    PurchaseOrderUiModel(
      id: '#PO-2026-003',
      status: 'Pending',
      supplier: 'BakeMaster Ltd.',
      date: '2026-05-02',
      itemCount: 1,
      total: '\$180.00',
      lines: [
        PurchaseOrderLineUiModel(
            title: '100x Whole Wheat Bread', amount: '\$180.00'),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const B2BAppBar(title: 'Purchase Orders'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OrdersSummaryHeader(),
            verticalSpace(12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 18.sp),
                  label: const Text('Create New Order'),
                ),
              ),
            ),
            verticalSpace(12),
            OrdersFilterBar(controller: _tabController),
            verticalSpace(12),
            const OrdersResultSummary(),
            verticalSpace(12),
            ...List.generate(
              _orders.length,
              (index) => PurchaseOrderCard(
                order: _orders[index],
                isExpanded: _expandedStates[index],
                onTap: () {
                  setState(() {
                    _expandedStates[index] = !_expandedStates[index];
                  });
                },
              ),
            ),
            verticalSpace(24),
          ],
        ),
      ),
    );
  }
}
