import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersFilterBar extends StatelessWidget {
  final TabController controller;

  const OrdersFilterBar({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: context.cs.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: context.appColors.borderColor),
      ),
      child: TabBar(
        controller: controller,
        dividerHeight: 0,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: context.cs.primary,
          borderRadius: BorderRadius.circular(6.r),
        ),
        labelColor: context.cs.onPrimary,
        unselectedLabelColor: context.cs.onSurface,
        labelStyle: TextStyles.label(context).copyWith(fontSize: 11.sp),
        unselectedLabelStyle:
            TextStyles.label(context).copyWith(fontSize: 11.sp),
        tabs: const [
          Tab(text: 'All Orders (3)'),
          Tab(text: 'Pending (1)'),
          Tab(text: 'Approved (1)'),
        ],
      ),
    );
  }
}
