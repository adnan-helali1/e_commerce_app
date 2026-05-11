import 'package:flutter/material.dart';
import 'package:e_commerce_app/app/core/helpers/extensions.dart';
import 'package:e_commerce_app/app/core/helpers/spacing.dart';
import 'package:e_commerce_app/app/core/theme/textstyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandHeader extends StatelessWidget {
  const BrandHeader({required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              color: this.context.cs.primary,
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: Icon(
              Icons.storefront_outlined,
              color: this.context.cs.onPrimary,
              size: 30.sp,
            ),
          ),
        ),
        verticalSpace(20),
        Text(
          'Welcome Back',
          textAlign: TextAlign.center,
          style: TextStyles.screenTitle(context),
        ),
        verticalSpace(8),
        Text(
          'Sign in to your supermarket account',
          textAlign: TextAlign.center,
          style: TextStyles.screenSubtitle(context),
        ),
      ],
    );
  }
}
