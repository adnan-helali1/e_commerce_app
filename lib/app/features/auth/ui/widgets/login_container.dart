import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/helpers/validation_helper.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/auth/ui/widgets/demo_data_section.dart';
import 'package:B2B/app/features/auth/ui/widgets/auth_header.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  bool rememberMe = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    // Validate both fields
    final emailError = ValidationHelper.validateEmail(emailController.text);
    final passwordError = ValidationHelper.validatePassword(
      passwordController.text,
    );

    if (emailError == null && passwordError == null) {
      // All validations passed, proceed with login
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login successful for: ${emailController.text}'),
          backgroundColor: Colors.green,
        ),
      );
      // TODO: Implement actual login logic here
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(emailError ?? passwordError ?? 'Validation failed'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

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
            title: 'Welcome Back',
            subtitle: 'Sign in to your supermarket account',
          ),
          verticalSpace(24),
          Field(
            context: context,
            label: 'Email Address *',
            hintText: 'store@example.com',
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: ValidationHelper.validateEmail,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Password *',
            hintText: 'Enter your password',
            icon: Icons.lock_outline,
            obscureText: true,
            controller: passwordController,
            validator: ValidationHelper.validatePassword,
          ),
          verticalSpace(12),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value ?? false;
                  });
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
              onPressed: _handleLogin,
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
          TextButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.registerscreen);
            },
            child: Text(
              'Create account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.cs.primary,
                fontWeight: FontWeight.w700,
              ),
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
