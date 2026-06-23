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
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7.r,
            height: 7.r,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ),
          horizontalSpace(7),
          Text(
            label,
            style: TextStyles.note(context).copyWith(
              color: color,
              fontSize: 12.sp,
              fontWeight: FontWeight.w800,
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
    case 'received':
    case 'wellStocked':
      return context.appColors.success;
    case 'Preparing':
    case 'inStock':
      return context.appColors.info;
    case 'Pending':
    case 'lowStock':
      return context.appColors.warning;
    case 'Unavailable':
    case 'Inactive':
      return context.cs.onSurfaceVariant;
    case 'cancelled':
    case 'outOfStock':
      return context.appColors.failure;
    default:
      return context.cs.onSurfaceVariant;
  }
}
