import 'package:e_commerce_app/app/core/helpers/extensions.dart';
import 'package:e_commerce_app/app/core/helpers/spacing.dart';
import 'package:e_commerce_app/app/core/theme/textstyles.dart';
import 'package:e_commerce_app/app/features/auth/ui/widgets/demo_data_section.dart';
import 'package:e_commerce_app/app/features/auth/ui/widgets/login_textfiled.dart';
import 'package:e_commerce_app/app/features/auth/ui/widgets/logind_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    bool rememberMe = true;

    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(28.r),
        border: Border.all(color: context.appColors.borderColor),
        boxShadow: [
          BoxShadow(
            color: context.cs.shadow.withOpacity(0.12),
            blurRadius: 28,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BrandHeader(context: context),

          verticalSpace(24),
          Text('Email Address *', style: TextStyles.label(context)),
          verticalSpace(8),
          Field(
            context: context,
            hintText: 'store@example.com',
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(16),
          Text('Password *', style: TextStyles.label(context)),
          verticalSpace(8),
          Field(
            context: context,
            hintText: 'Enter your password',
            icon: Icons.lock_outline,
            obscureText: true,
          ),
          verticalSpace(12),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  //   setState(() {
                  //     rememberMe = value ?? false;
                  //   });
                  //
                },
              ),
              Expanded(
                child: Text(
                  'Remember me',
                  style: TextStyles.fieldText(context),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: context.cs.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(8),
          SizedBox(
            height: 50.h,
            child: FilledButton(
              onPressed: () {},
              child: Text('Sign In', style: TextStyles.button(context)),
            ),
          ),
          verticalSpace(20),
          Text(
            "Don't have an account?",
            textAlign: TextAlign.center,
            style: TextStyles.note(context),
          ),
          verticalSpace(4),
          Text(
            'Contact Administrator',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: context.cs.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(20),
          Divider(color: context.appColors.borderColor),
          verticalSpace(14),
          DemoCredentials(context: context),
        ],
      ),
    );
  }
}
