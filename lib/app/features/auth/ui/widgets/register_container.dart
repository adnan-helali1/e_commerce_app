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

    // Listen for changes and validate in real-time
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
    context.read<RegisterCubit>().validateForm(
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
            controller: storeNameController,
            validator: ValidationHelper.validateStoreName,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Owner Name *',
            hintText: 'Owner',
            icon: Icons.person_outline,
            controller: ownerNameController,
            validator: (value) =>
                ValidationHelper.validateName(value, fieldName: 'Owner name'),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Phone *',
            hintText: '0999999999',
            icon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            controller: phoneController,
            validator: ValidationHelper.validatePhone,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Email *',
            hintText: 'store1@example.com',
            icon: Icons.mail_outline,
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: ValidationHelper.validateEmail,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Password *',
            hintText: 'password123',
            icon: Icons.lock_outline,
            obscureText: true,
            controller: passwordController,
            validator: ValidationHelper.validatePassword,
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Confirm Password *',
            hintText: 'Confirm your password',
            icon: Icons.lock_outline,
            obscureText: true,
            controller: confirmPasswordController,
            validator: (value) => ValidationHelper.validatePasswordMatch(
              passwordController.text,
              value,
            ),
          ),
          verticalSpace(16),
          Field(
            context: context,
            label: 'Address',
            hintText: 'Address',
            icon: Icons.location_on_outlined,
            maxLines: 3,
            controller: addressController,
            validator: ValidationHelper.validateAddress,
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
                    'Create Account',
                    style: TextStyles.button(context),
                  ),
                ),
              );
            },
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
