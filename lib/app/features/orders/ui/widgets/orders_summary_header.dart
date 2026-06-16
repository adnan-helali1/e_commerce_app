import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersSummaryHeader extends StatelessWidget {
  final OrdersResponse response; // أضف هذا الحقل
  const OrdersSummaryHeader({
    super.key,
    required this.response,
  });

  @override
  Widget build(BuildContext context) {
    return SummaryHeader(
      title: 'Purchase Orders',
      height: 190.h,
      stats: [
        SummaryStat(
          icon: Icons.schedule_rounded,
          value: response.data.total.toString(),
          label: 'Pending Approval',
          valueFontSize: 24,
        ),
        SummaryStat(
          icon: Icons.inventory_2_outlined,
          value: response.summery.totalSell.toString(),
          label: 'Total Value',
          valueFontSize: 24,
        ),
      ],
    );
  }
}
