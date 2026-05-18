import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/widgets/loading_overlay.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_state.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_cubit.dart';
import 'package:B2B/app/features/auth/ui/widgets/login_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: BlocListener<LoginCubit, LoginState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      success: (response) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Registration successful!'),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 2),
                          ),
                        );
                        Future.delayed(const Duration(seconds: 2), () {
                          context.pushReplacementNamed(
                              Routes.forgotpasswordscreen);
                        });
                      },
                      failure: (error) {
                        // Error
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(error),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                    );
                  },
                  child: BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      final isLoading = state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                      return LoadingOverlay(
                        isLoading: isLoading,
                        child: const LoginContainer(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
