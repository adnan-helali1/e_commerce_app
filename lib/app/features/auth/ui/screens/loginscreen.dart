import 'package:e_commerce_app/app/core/helpers/extensions.dart';
import 'package:e_commerce_app/app/core/helpers/spacing.dart';
import 'package:e_commerce_app/app/core/theme/textstyles.dart';
import 'package:e_commerce_app/app/features/auth/ui/widgets/login_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 0, 40, 108),
              context.cs.primaryContainer,
              context.cs.primary,
              context.cs.secondaryFixed,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 420.w),
                child: LoginContainer(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
