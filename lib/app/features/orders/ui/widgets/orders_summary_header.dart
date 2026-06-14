import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersSummaryHeader extends StatelessWidget {
  const OrdersSummaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final total = context.read<OrdersCubit>().state;
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
          value: '1220',
          label: 'Total Value',
          valueFontSize: 24,
        ),
      ],
    );
  }
}
