import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersSummaryHeader extends StatelessWidget {
  const OrdersSummaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SummaryHeader(
      title: 'Purchase Orders',
      height: 190.h,
      stats: [
        SummaryStat(
          icon: Icons.schedule_rounded,
          value: '12',
          label: 'Pending Approval',
          valueFontSize: 24,
        ),
        SummaryStat(
          icon: Icons.inventory_2_outlined,
          value: '\$712',
          label: 'Total Value',
          valueFontSize: 24,
        ),
      ],
    );
  }
}
