import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersResultSummary extends StatelessWidget {
  const OrdersResultSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '3 orders found',
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
