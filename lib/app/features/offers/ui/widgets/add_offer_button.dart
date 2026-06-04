import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOfferButton extends StatelessWidget {
  const AddOfferButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78.w,
      height: 36.h,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.add_rounded,
          size: 17.sp,
          color: context.cs.surface,
        ),
        label: Text(
          'Add',
          style: TextStyles.button(context).copyWith(
            fontSize: 14.sp,
          ),
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
