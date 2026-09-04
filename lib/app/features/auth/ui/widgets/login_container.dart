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
    if (!mounted) return;
    final l10n = context.l10n;
    final isEmailValid =
        ValidationHelper.validateEmail(emailController.text, l10n) == null;
    final isPasswordValid =
        ValidationHelper.validatePassword(passwordController.text, l10n) ==
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
    final l10n = context.l10n;

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
              title: l10n.welcomeBack,
              subtitle: l10n.signInSubtitle,
            ),

            verticalSpace(24),

            /// EMAIL
            Field(
              context: context,
              label: l10n.emailAddressRequiredLabel,
              hintText: l10n.emailHint,
              icon: Icons.mail_outline,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              validator: (v) => ValidationHelper.validateEmail(v, l10n),
            ),

            verticalSpace(16),

            /// PASSWORD
            Field(
              context: context,
              label: l10n.passwordRequiredLabel,
              hintText: l10n.enterPasswordHint,
              icon: Icons.lock_outline,
              obscureText: true,
              controller: passwordController,
              validator: (v) => ValidationHelper.validatePassword(v, l10n),
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
                    l10n.rememberMe,
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
                    l10n.forgotPassword,
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
                      l10n.signIn,
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
              l10n.dontHaveAccount,
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
                l10n.createAccountLink,
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
