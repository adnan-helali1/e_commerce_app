import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/auth/ui/widgets/auth_header.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterContainer extends StatelessWidget {
  const RegisterContainer({super.key});

  @override
  Widget build(BuildContext context) {
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
          AuthHeader(
            context: context,
            title: 'Create Account',
            subtitle: 'Register your store account',
          ),
          verticalSpace(24),
          Field(
            context: context,
            label: 'Store Name *',
            hintText: 'My Store',
            icon: Icons.storefront_outlined,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Owner Name *',
            hintText: 'Owner',
            icon: Icons.person_outline,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Phone *',
            hintText: '0999999999',
            icon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Email *',
            hintText: 'store1@example.com',
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Password *',
            hintText: 'password123',
            icon: Icons.lock_outline,
            obscureText: true,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Address',
            hintText: 'Address',
            icon: Icons.location_on_outlined,
            maxLines: 3,
          ),
          verticalSpace(20),
          SizedBox(
            height: 50.h,
            child: FilledButton(
              onPressed: () {},
              child: Text('Create Account', style: TextStyles.button(context)),
            ),
          ),
          verticalSpace(20),
          Text(
            'Already have an account?',
            textAlign: TextAlign.center,
            style: TextStyles.note(context),
          ),
          verticalSpace(4),
          TextButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.loginscreen);
            },
            child: Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.cs.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
