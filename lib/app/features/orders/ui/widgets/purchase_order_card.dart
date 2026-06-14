import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseOrderCard extends StatelessWidget {
  final OrderModel order;
  final bool isExpanded;
  final VoidCallback onTap;

  const PurchaseOrderCard({
    required this.order,
    required this.isExpanded,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final statusColor = b2bStatusColor(context, order.status);

    return B2BInfoCard(
      margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 12.h),
      padding: EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Order ID + Status Badge
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Order #PO-${order.createdAt.split('T')[0].replaceAll('-', '')}-${order.id.toString().padLeft(3, '0')}',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyles.label(context).copyWith(fontSize: 14.sp),
                    ),
                  ),
                  B2BStatusBadge(label: order.status, color: statusColor),
                  horizontalSpace(8),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons.chevron_right,
                    color: context.cs.onSurfaceVariant,
                    size: 18.sp,
                  ),
                ],
              ),
              verticalSpace(4),
              // Supplier Name
              Text(
                order.supplier.name,
                style: TextStyles.note(context).copyWith(fontSize: 12.sp),
              ),
              verticalSpace(12),
              // Items List
              ...order.items.map(
                (item) => Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.supplierProduct.product.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.note(context)
                              .copyWith(fontSize: 12.sp),
                        ),
                      ),
                      horizontalSpace(8),
                      Text(
                        '${item.quantity}x',
                        style:
                            TextStyles.note(context).copyWith(fontSize: 12.sp),
                      ),
                      horizontalSpace(8),
                      Text(
                        '\$${item.unitSellPrice}',
                        style:
                            TextStyles.label(context).copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(height: 14.h, color: context.appColors.borderColor),
              // Footer: Date, Items Count, Total
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 12.sp,
                    color: context.cs.onSurfaceVariant,
                  ),
                  horizontalSpace(4),
                  Text(
                    order.createdAt.split('T')[0],
                    style: TextStyles.note(context).copyWith(fontSize: 10.sp),
                  ),
                  horizontalSpace(12),
                  Icon(
                    Icons.inventory_2_outlined,
                    size: 12.sp,
                    color: context.cs.onSurfaceVariant,
                  ),
                  horizontalSpace(4),
                  Text(
                    '${order.items.length} items',
                    style: TextStyles.note(context).copyWith(fontSize: 10.sp),
                  ),
                  const Spacer(),
                  Text(
                    '\$${order.totalSell}',
                    style: TextStyles.label(context).copyWith(
                      color: context.cs.primary,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
