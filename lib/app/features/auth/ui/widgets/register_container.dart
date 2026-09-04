import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/helpers/validation_helper.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/auth/logic/register/register_cubit.dart';
import 'package:B2B/app/features/auth/logic/register/register_state.dart';
import 'package:B2B/app/features/auth/ui/widgets/auth_header.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterContainer extends StatefulWidget {
  const RegisterContainer({super.key});

  @override
  State<RegisterContainer> createState() => _RegisterContainerState();
}

class _RegisterContainerState extends State<RegisterContainer> {
  late TextEditingController storeNameController;
  late TextEditingController ownerNameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController addressController;

  @override
  void initState() {
    super.initState();
    storeNameController = TextEditingController();
    ownerNameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    addressController = TextEditingController();

    storeNameController.addListener(_validateForm);
    ownerNameController.addListener(_validateForm);
    phoneController.addListener(_validateForm);
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
    confirmPasswordController.addListener(_validateForm);
    addressController.addListener(_validateForm);
  }

  @override
  void dispose() {
    storeNameController.dispose();
    ownerNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void _validateForm() {
    if (!mounted) return;
    context.read<RegisterCubit>().validateForm(
          l10n: context.l10n,
          storeName: storeNameController.text,
          ownerName: ownerNameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
          passwordConfirmation: confirmPasswordController.text,
          address: addressController.text,
        );
  }

  void _handleRegister(BuildContext context) {
    context.read<RegisterCubit>().emitRegisterStates(
          storeName: storeNameController.text,
          ownerName: ownerNameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
          passwordConfirmation: confirmPasswordController.text,
          address: addressController.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

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
            title: l10n.createAccount,
            subtitle: l10n.registerSubtitle,
          ),
          verticalSpace(24),
          Field(
            context: context,
            label: l10n.storeNameRequiredLabel,
            hintText: l10n.storeNameHint,
            icon: Icons.storefront_outlined,
            controller: storeNameController,
            validator: (v) => ValidationHelper.validateStoreName(v, l10n),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: l10n.ownerNameRequiredLabel,
            hintText: l10n.ownerNameHint,
            icon: Icons.person_outline,
            controller: ownerNameController,
            validator: (value) => ValidationHelper.validateName(
              value,
              l10n,
              fieldName: l10n.ownerNameField,
            ),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: l10n.phoneRequiredLabel,
            hintText: l10n.phoneHint,
            icon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            controller: phoneController,
            validator: (v) => ValidationHelper.validatePhone(v, l10n),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: l10n.emailRequiredLabel,
            hintText: l10n.registerEmailHint,
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: (v) => ValidationHelper.validateEmail(v, l10n),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: l10n.passwordRequiredLabel,
            hintText: l10n.passwordHintExample,
            icon: Icons.lock_outline,
            obscureText: true,
            controller: passwordController,
            validator: (v) => ValidationHelper.validatePassword(v, l10n),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: l10n.confirmPasswordRequiredLabel,
            hintText: l10n.confirmPasswordHint,
            icon: Icons.lock_outline,
            obscureText: true,
            controller: confirmPasswordController,
            validator: (value) => ValidationHelper.validatePasswordMatch(
              passwordController.text,
              value,
              l10n,
            ),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: l10n.address,
            hintText: l10n.address,
            icon: Icons.location_on_outlined,
            maxLines: 3,
            controller: addressController,
            validator: (v) => ValidationHelper.validateAddress(v, l10n),
          ),
          verticalSpace(20),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              final isFormValid = state.maybeWhen(
                initial: (isFormValid) => isFormValid,
                orElse: () => false,
              );

              return SizedBox(
                height: 50.h,
                child: FilledButton(
                  onPressed:
                      isFormValid ? () => _handleRegister(context) : null,
                  child: Text(
                    l10n.createAccount,
                    style: TextStyles.button(context),
                  ),
                ),
              );
            },
          ),
          verticalSpace(20),
          Text(
            l10n.alreadyHaveAccount,
            textAlign: TextAlign.center,
            style: TextStyles.note(context),
          ),
          verticalSpace(4),
          TextButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.loginscreen);
            },
            child: Text(
              l10n.signIn,
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
