import 'package:B2B/app/core/helpers/colors_changer_extension.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/home/data/models/home_ui_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentOrdersSection extends StatelessWidget {
  final List<RecentOrderPreview> orders;

  const RecentOrdersSection({
    required this.orders,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.shopping_cart_outlined,
                  color: context.cs.primary, size: 18.sp),
              horizontalSpace(6),
              Expanded(
                  child: Text('Recent Orders',
                      style: TextStyles.label(context).copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w700))),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyles.note(context).copyWith(
                      color: context.cs.primary,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          verticalSpace(8),
          ...orders.map(
            (order) => _RecentOrderCard(
              order: order,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
          ),
        ],
      ),
    );
  }
}

class _RecentOrderCard extends StatelessWidget {
  final RecentOrderPreview order;
  final EdgeInsetsGeometry margin;

  const _RecentOrderCard({
    required this.order,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final statusColor = homeRecentOrderStatusColor(context, order.status);

    return B2BInfoCard(
      margin: margin,
      padding: EdgeInsets.all(12.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Order ${order.id}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.label(context)
                      .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w700),
                ),
              ),
              B2BStatusBadge(label: order.status, color: statusColor),
            ],
          ),
          verticalSpace(4),
          Text(order.supplier, style: TextStyles.note(context)),
          verticalSpace(10),
          ...order.lines.map(
            (line) => Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      line.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.note(context).copyWith(fontSize: 14.sp),
                    ),
                  ),
                  horizontalSpace(8),
                  Text(
                    line.amount,
                    style: TextStyles.label(context).copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 16.h, color: context.appColors.borderColor),
          Row(
            children: [
              Icon(Icons.calendar_today_outlined,
                  size: 12.sp, color: context.cs.onSurfaceVariant),
              horizontalSpace(4),
              Text(order.date,
                  style: TextStyles.note(context).copyWith(fontSize: 12.sp)),
              horizontalSpace(12),
              Icon(Icons.inventory_2_outlined,
                  size: 12.sp, color: context.cs.onSurfaceVariant),
              horizontalSpace(4),
              Expanded(
                child: Text(
                  '${order.itemCount} items',
                  style: TextStyles.note(context).copyWith(fontSize: 12.sp),
                ),
              ),
              Text(
                order.total,
                style: TextStyles.label(context).copyWith(
                  color: context.cs.primary,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
