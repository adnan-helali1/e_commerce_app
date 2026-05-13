import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/cubit/register_cubit.dart';
import 'package:B2B/app/features/auth/ui/screens/register_screen.dart';
import 'package:B2B/app/features/auth/ui/screens/loginscreen.dart';
import 'package:B2B/app/features/auth/ui/screens/forgotpasswordscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginscreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));

      case Routes.registerscreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<RegisterCubit>(),
                  child: const RegisterScreen(),
                ));

      case Routes.forgotpasswordscreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
