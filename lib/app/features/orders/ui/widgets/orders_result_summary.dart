import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersResultSummary extends StatelessWidget {
  final OrdersResponse order;

  const OrdersResultSummary({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '${order.data.total} orders found',
              style: TextStyles.note(context).copyWith(fontSize: 12.sp),
            ),
          ),
          Text(
            'Total: \$712.00',
            style: TextStyles.label(context).copyWith(
              color: context.cs.primary,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
