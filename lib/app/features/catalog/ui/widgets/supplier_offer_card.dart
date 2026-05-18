import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_ui_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupplierOfferCard extends StatelessWidget {
  final SupplierOfferUiModel offer;

  const SupplierOfferCard({
    required this.offer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isAvailable = offer.status == 'Available';
    final statusColor = b2bStatusColor(context, offer.status);

    return B2BInfoCard(
      margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 12.h),
      padding: EdgeInsets.all(12.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56.r,
            height: 56.r,
            decoration: BoxDecoration(
              color: context.cs.surfaceContainerHighest.withValues(alpha: 0.65),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              Icons.inventory_2_outlined,
              color: context.cs.onSurfaceVariant,
              size: 28.sp,
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offer.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.label(context)
                                .copyWith(fontSize: 15.sp),
                          ),
                          verticalSpace(2),
                          Text(
                            offer.supplier,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.note(context)
                                .copyWith(fontSize: 11.sp),
                          ),
                        ],
                      ),
                    ),
                    B2BStatusBadge(label: offer.status, color: statusColor),
                  ],
                ),
                verticalSpace(12),
                Row(
                  children: [
                    Expanded(
                        child: _OfferMetric(
                            label: 'Buy Price', value: offer.buyPrice)),
                    Expanded(
                        child: _OfferMetric(
                            label: 'Stock', value: '${offer.stock} units')),
                    Expanded(
                        child: _OfferMetric(
                            label: 'Category', value: offer.category)),
                  ],
                ),
              ],
            ),
          ),
          horizontalSpace(8),
          SizedBox(
            width: 64.w,
            height: 34.h,
            child: ElevatedButton.icon(
              onPressed: isAvailable ? () {} : null,
              icon: Icon(Icons.add, size: 14.sp),
              label: Text(
                'Add',
                style: TextStyles.button(context).copyWith(fontSize: 11.sp),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OfferMetric extends StatelessWidget {
  final String label;
  final String value;

  const _OfferMetric({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyles.note(context).copyWith(fontSize: 10.sp)),
        verticalSpace(2),
        Text(
          value,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:
              TextStyles.label(context).copyWith(fontSize: 11.sp, height: 1.2),
        ),
      ],
    );
  }
}
