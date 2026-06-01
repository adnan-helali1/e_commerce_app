import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferSummaryRow extends StatelessWidget {
  final int totalOffers;
  final int availableOffers;

  const OfferSummaryRow({
    required this.totalOffers,
    required this.availableOffers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _SummaryTile(
            label: 'Total offers',
            value: '$totalOffers',
            icon: Icons.local_offer_outlined,
            chipLabel: 'All offers received',
            iconColor: context.cs.primary,
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: _SummaryTile(
            label: 'Available offers',
            value: '$availableOffers',
            icon: Icons.check_circle_outline,
            chipLabel: 'Ready to review',
            iconColor: Colors.green,
          ),
        ),
      ],
    );
  }
}

class _SummaryTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final String? chipLabel;
  final Color? iconColor;

  const _SummaryTile({
    required this.label,
    required this.value,
    required this.icon,
    this.chipLabel,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.appColors.borderColor),
      ),
      child: Row(
        children: [
          Container(
            width: 18.w,
            height: 18.h,
            decoration: BoxDecoration(
              color: (iconColor ?? context.cs.primary).withOpacity(0.12),
              borderRadius: BorderRadius.circular(14.r),
            ),
            child:
                Icon(icon, color: iconColor ?? context.cs.primary, size: 18.sp),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: TextStyles.label(context).copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                    height: 1.05,
                  ),
                ),
                verticalSpace(6),
                Text(
                  label,
                  style: TextStyles.note(context)
                      .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
