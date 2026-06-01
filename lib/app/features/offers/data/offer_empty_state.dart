import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferEmptyState extends StatelessWidget {
  final VoidCallback onAddPressed;

  const OfferEmptyState({
    required this.onAddPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: context.appColors.borderColor),
      ),
      child: Column(
        children: [
          Container(
            width: 56.r,
            height: 56.r,
            decoration: BoxDecoration(
              color: context.cs.primary.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Icon(
              Icons.inbox_outlined,
              color: context.cs.primary,
              size: 28.sp,
            ),
          ),
          verticalSpace(12),
          Text(
            'No supplier offers found',
            textAlign: TextAlign.center,
            style: TextStyles.label(context).copyWith(fontSize: 15.sp),
          ),
          verticalSpace(4),
          Text(
            'Try a different search term or add a new offer to continue.',
            textAlign: TextAlign.center,
            style: TextStyles.screenSubtitle(context),
          ),
          verticalSpace(16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onAddPressed,
              icon: Icon(Icons.add, size: 18.sp),
              label: const Text('Add Offer'),
            ),
          ),
        ],
      ),
    );
  }
}
