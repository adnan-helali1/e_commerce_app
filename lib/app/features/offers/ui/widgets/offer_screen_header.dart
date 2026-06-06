import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferScreenHeader extends StatelessWidget {
  const OfferScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SizedBox(
        height: 44.h,
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Supplier Offers',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.label(context).copyWith(
                  fontSize: 18.sp,
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
