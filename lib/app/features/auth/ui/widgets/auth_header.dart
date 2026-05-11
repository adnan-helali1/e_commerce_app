import 'package:flutter/material.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.context,
    required this.title,
    required this.subtitle,
  });

  final BuildContext context;
  final String title;
  final String subtitle;

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
          title,
          textAlign: TextAlign.center,
          style: TextStyles.screenTitle(context),
        ),
        verticalSpace(8),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyles.screenSubtitle(context),
        ),
      ],
    );
  }
}
