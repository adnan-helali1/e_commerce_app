// login_screen.dart

import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/widgets/app_gradient.dart';
import 'package:B2B/app/core/widgets/base_screen.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_state.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_container.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen<LoginCubit, LoginState>(
      backgroundDecoration: BoxDecoration(
        gradient: AppGradients.authGradient(
          context,
        ),
      ),

      /// LOADING
      loadingWhen: (state) {
        return state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );
      },

      /// SUCCESS
      successWhen: (state) {
        return state.maybeWhen(
          success: (_) => true,
          orElse: () => false,
        );
      },

      /// ERROR
      errorWhen: (state) {
        return state.maybeWhen(
          failure: (_) => true,
          orElse: () => false,
        );
      },

      /// SUCCESS MESSAGE
      successMessage: (state) {
        return state.maybeWhen(
          success: (_) => 'Login successful',
          orElse: () => '',
        );
      },

      /// ERROR MESSAGE
      errorMessage: (state) {
        return state.maybeWhen(
          failure: (error) => error,
          orElse: () => '',
        );
      },

      /// SUCCESS ACTION
      onSuccess: (context, state) {
        context.pushReplacementNamed(
          Routes.forgotpasswordscreen,
        );
      },

      /// SCREEN UI
      builder: (context, state) {
        return Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 480,
              ),
              child: const LoginContainer(),
            ),
          ),
        );
      },
    );
  }
}
