import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/auth/ui/widgets/auth_header.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordContainer extends StatefulWidget {
  const ForgotPasswordContainer({super.key});

  @override
  State<ForgotPasswordContainer> createState() =>
      _ForgotPasswordContainerState();
}

class _ForgotPasswordContainerState extends State<ForgotPasswordContainer> {
  late TextEditingController passwordController;
  int selectedOption = 0; // 0 for password option, 1 for contact option

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  void _handlePasswordSubmit() {
    if (passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a password'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Password "${passwordController.text}" has been sent to the administrator for verification',
        ),
        backgroundColor: Colors.green,
      ),
    );

    // Clear the field after submission
    passwordController.clear();

    // Optional: Navigate back to login after a delay
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.pushReplacementNamed(Routes.loginscreen);
      }
    });
  }

  Future<void> _launchEmail() async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Email: helaliadnan877@gmail.com'),
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 3),
      ),
    );
  }

  Future<void> _launchWhatsApp() async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('WhatsApp: +963 985 198 014'),
        backgroundColor: Color(0xFF25D366),
        duration: Duration(seconds: 3),
      ),
    );
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
            title: 'Recover Password',
            subtitle: 'Choose how you want to recover your account',
          ),
          verticalSpace(24),
          // Option 1: Submit remembered password
          GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = 0;
              });
            },
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: selectedOption == 0
                    ? context.cs.primary.withOpacity(0.1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: selectedOption == 0
                      ? context.cs.primary
                      : context.appColors.borderColor,
                  width: selectedOption == 0 ? 2 : 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio<int>(
                        value: 0,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value ?? 0;
                          });
                        },
                      ),
                      Expanded(
                        child: Text(
                          'Submit a Password',
                          style: TextStyles.label(
                            context,
                          ).copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(8),
                  Text(
                    'If you can\'t remember your password, give me the last password you remember or a password you think it\'s like it and send it',
                    style: TextStyles.note(context),
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(16),
          // Password field - only visible when option 1 is selected
          if (selectedOption == 0)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Field(
                  context: context,
                  label: 'Password *',
                  hintText: 'Enter the password you remember',
                  icon: Icons.lock_outline,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                verticalSpace(12),
                SizedBox(
                  height: 50.h,
                  child: FilledButton(
                    onPressed: _handlePasswordSubmit,
                    child: Text(
                      'Send Password',
                      style: TextStyles.button(context),
                    ),
                  ),
                ),
                verticalSpace(16),
              ],
            ),
          // Option 2: Contact administrator
          GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: selectedOption == 1
                    ? context.cs.primary.withOpacity(0.1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: selectedOption == 1
                      ? context.cs.primary
                      : context.appColors.borderColor,
                  width: selectedOption == 1 ? 2 : 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value ?? 1;
                          });
                        },
                      ),
                      Expanded(
                        child: Text(
                          'Contact Administrator',
                          style: TextStyles.label(
                            context,
                          ).copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(8),
                  Text(
                    'Contact us on email or WhatsApp for manual password recovery assistance',
                    style: TextStyles.note(context),
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(16),
          // Contact options - only visible when option 2 is selected
          if (selectedOption == 1)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Email button
                SizedBox(
                  height: 50.h,
                  child: FilledButton.tonal(
                    onPressed: _launchEmail,
                    style: FilledButton.styleFrom(
                      backgroundColor: context.cs.primary.withOpacity(0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline, size: 20.sp),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Text(
                            'helaliadnan877@gmail.com',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: 'Cairo',
                              color: context.cs.primary,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(12),
                // WhatsApp button
                SizedBox(
                  height: 50.h,
                  child: FilledButton(
                    onPressed: _launchWhatsApp,
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(
                        0xFF25D366,
                      ), // WhatsApp green
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_bubble_outline, size: 20.sp),
                        SizedBox(width: 8.w),
                        Text(
                          '+963 985 198 014 (WhatsApp)',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: 'Cairo',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(16),
              ],
            ),
          // Back to login button
          TextButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.loginscreen);
            },
            child: Text(
              '← Back to Sign In',
              style: TextStyle(
                color: context.cs.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
