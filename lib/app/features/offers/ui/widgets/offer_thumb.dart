import 'package:flutter/material.dart';
import 'package:B2B/app/core/helpers/extensions.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferThumb extends StatelessWidget {
  const OfferThumb();

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
