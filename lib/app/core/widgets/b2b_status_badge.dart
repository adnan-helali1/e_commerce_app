import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class B2BStatusBadge extends StatelessWidget {
  final String label;
  final Color color;

  const B2BStatusBadge({
    required this.label,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(999.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 5.r,
            height: 5.r,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          horizontalSpace(4),
          Text(
            label,
            style: TextStyles.note(context).copyWith(
              color: color,
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

Color b2bStatusColor(BuildContext context, String status) {
  switch (status) {
    case 'Approved':
    case 'Available':
    case 'Active':
    case 'available':
    case 'submitted':
      return context.appColors.success;
    case 'Preparing':
      return context.appColors.info;
    case 'Pending':
      return context.appColors.warning;
    case 'Unavailable':
    case 'Inactive':
      return context.cs.onSurfaceVariant;
    case 'cancelled':
      return context.appColors.failure;
    default:
      return context.cs.onSurfaceVariant;
  }
}
