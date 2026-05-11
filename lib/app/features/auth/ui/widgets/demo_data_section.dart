import 'package:e_commerce_app/app/core/helpers/extensions.dart';
import 'package:e_commerce_app/app/core/helpers/spacing.dart';
import 'package:e_commerce_app/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DemoCredentials extends StatelessWidget {
  const DemoCredentials({required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: this.context.cs.surface,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: this.context.appColors.borderColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Demo Account',
                  style: TextStyles.label(this.context),
                ),
              ),
              Expanded(
                child: Text(
                  'Password',
                  textAlign: TextAlign.end,
                  style: TextStyles.label(this.context),
                ),
              ),
            ],
          ),
          verticalSpace(8),
          Row(
            children: [
              Expanded(
                child: Text(
                  'demo@b2b.com',
                  style: TextStyles.note(this.context),
                ),
              ),
              Expanded(
                child: Text(
                  '123456',
                  textAlign: TextAlign.end,
                  style: TextStyles.note(this.context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
