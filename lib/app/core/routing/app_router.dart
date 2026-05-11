import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/features/auth/ui/screens/registerscreen.dart';
import 'package:B2B/app/features/auth/ui/screens/loginscreen.dart';
import 'package:B2B/app/features/auth/ui/screens/forgotpasswordscreen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginscreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case Routes.registerscreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

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
/*

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
*/