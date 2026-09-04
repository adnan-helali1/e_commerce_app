import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersSummaryHeader extends StatelessWidget {
  const OrdersSummaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        int pendingCount = 0;
        double totalValue = 0;

        state.maybeWhen(
          success: (response) {
            final orders = response.data.data;
            final summaryOrders = response.summery;

            for (final order in orders) {
              if (order.status.toLowerCase() == 'pending') {
                pendingCount++;
              }
              totalValue += summaryOrders.total;
            }
          },
          orElse: () {},
        );

        return SummaryHeader(
          title: context.l10n.purchaseOrders,
          height: 190.h,
          stats: [
            SummaryStat(
              icon: Icons.schedule_rounded,
              value: pendingCount.toString(),
              label: context.l10n.pendingApproval,
              valueFontSize: 24,
            ),
            SummaryStat(
              icon: Icons.inventory_2_outlined,
              value: '\$${totalValue.toStringAsFixed(2)}',
              label: context.l10n.totalValue,
              valueFontSize: 24,
            ),
          ],
        );
      },
    );
  }
}
