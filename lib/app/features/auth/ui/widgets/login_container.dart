// login_container.dart

import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/helpers/validation_helper.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/auth/logic/login/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/login/login_state.dart';
import 'package:B2B/app/features/auth/ui/widgets/auth_header.dart';
import 'package:B2B/app/features/auth/ui/widgets/demo_data_section.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  bool rememberMe = false;
  bool isFormValid = false;

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();

    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  void _validateForm() {
    final isEmailValid = ValidationHelper.validateEmail(
          emailController.text,
        ) ==
        null;

    final isPasswordValid = ValidationHelper.validatePassword(
          passwordController.text,
        ) ==
        null;

    final valid = isEmailValid && isPasswordValid;

    if (valid != isFormValid) {
      setState(() {
        isFormValid = valid;
      });
    }
  }

  @override
  void dispose() {
    emailController.removeListener(_validateForm);
    passwordController.removeListener(_validateForm);

    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(28.r),
        border: Border.all(
          color: context.appColors.borderColor,
        ),
        boxShadow: [
          BoxShadow(
            color: context.cs.shadow.withOpacity(
              0.12,
            ),
            blurRadius: 28,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: Form(
        key: cubit.formKey,
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

            /// EMAIL
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

            /// PASSWORD
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

            /// REMEMBER + FORGOT PASSWORD
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
                    style: TextStyles.fieldText(
                      context,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed(
                      Routes.forgotpasswordscreen,
                    );
                  },
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

            /// LOGIN BUTTON
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );

                return SizedBox(
                  height: 50.h,
                  child: FilledButton(
                    onPressed: isFormValid && !isLoading
                        ? () {
                            _login(cubit);
                          }
                        : null,
                    child: Text(
                      'Sign In',
                      style: TextStyles.button(
                        context,
                      ),
                    ),
                  ),
                );
              },
            ),

            verticalSpace(20),

            /// CREATE ACCOUNT
            Text(
              "Don't have an account?",
              textAlign: TextAlign.center,
              style: TextStyles.note(context),
            ),

            verticalSpace(4),

            TextButton(
              onPressed: () {
                context.pushNamed(
                  Routes.registerscreen,
                );
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

            Divider(
              color: context.appColors.borderColor,
            ),

            verticalSpace(14),

            DemoCredentials(
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  void _login(LoginCubit cubit) {
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitLoginStates(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        rememberMe: rememberMe,
      );
    }
  }
}
