import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/offers/data/offer_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferCard extends StatelessWidget {
  final OfferUiModel offer;

  const OfferCard({
    required this.offer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isAvailable = offer.status == 'Available';

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 156.h),
      margin: EdgeInsets.symmetric(horizontal: 24.w).copyWith(bottom: 12.h),
      padding: EdgeInsetsDirectional.fromSTEB(18.w, 14.h, 12.w, 14.h),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: context.appColors.borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _OfferThumb(),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _OfferTitleRow(offer: offer),
                verticalSpace(18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: _OfferMetric(
                        label: 'Buy\nPrice',
                        value: offer.buyPrice,
                        valueColor: context.cs.primary,
                      ),
                    ),
                    Expanded(
                      child: _OfferMetric(
                        label: 'Stock',
                        value: '${offer.stock}\nunits',
                      ),
                    ),
                    Expanded(
                      child: _OfferMetric(
                        label: 'Category\n',
                        value: offer.category,
                      ),
                    ),
                    if (isAvailable) ...[
                      horizontalSpace(10),
                      const _AddOfferButton(),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OfferThumb extends StatelessWidget {
  const _OfferThumb();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.r,
      height: 80.r,
      margin: EdgeInsets.only(top: 2.h),
      decoration: BoxDecoration(
        color: context.cs.surfaceContainerHighest.withValues(alpha: 0.72),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Icon(
        Icons.inventory_2_outlined,
        color: context.cs.onSurfaceVariant,
        size: 30.sp,
      ),
    );
  }
}

class _OfferTitleRow extends StatelessWidget {
  final OfferUiModel offer;

  const _OfferTitleRow({required this.offer});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offer.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.label(context).copyWith(
                  fontSize: 18.sp,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalSpace(4),
              Text(
                offer.supplier,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.note(context).copyWith(
                  fontSize: 13.sp,
                  height: 1.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        horizontalSpace(8),
        B2BStatusBadge(
          label: offer.status,
          color: b2bStatusColor(context, offer.status),
        ),
      ],
    );
  }
}

class _OfferMetric extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _OfferMetric({
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.note(context).copyWith(
              fontSize: 12.sp,
              height: 1.05,
            ),
          ),
          verticalSpace(12),
          Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.label(context).copyWith(
              color: valueColor,
              fontSize: 14.sp,
              height: 1.05,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _AddOfferButton extends StatelessWidget {
  const _AddOfferButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 36.h,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add_rounded, size: 17.sp, color: context.cs.surface),
        label: Text(
          'Add',
          style: TextStyles.button(context).copyWith(fontSize: 14.sp),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.cs.primary,
          foregroundColor: context.cs.onSecondary,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
      ),
    );
  }
}
