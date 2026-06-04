import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferMetric extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const OfferMetric({
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
