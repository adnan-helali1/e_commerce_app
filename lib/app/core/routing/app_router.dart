import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/widgets/main_shell_widget.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/cubit/register_cubit.dart';
import 'package:B2B/app/features/auth/ui/screens/register_screen.dart';
import 'package:B2B/app/features/auth/ui/screens/loginscreen.dart';
import 'package:B2B/app/features/auth/ui/screens/forgotpasswordscreen.dart';
import 'package:B2B/app/features/catalog/ui/screens/my_catalog_screen.dart';
import 'package:B2B/app/features/catalog/ui/screens/supplier_offers_screen.dart';
import 'package:B2B/app/features/home/ui/screens/home_screen.dart';
import 'package:B2B/app/features/orders/ui/screens/purchase_orders_screen.dart';
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

      case Routes.homescreen:
        return MaterialPageRoute(
            builder: (_) => MainShellWidget(
                  child: const HomeScreen(),
                ));
      case Routes.orderDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => MainShellWidget(
                  child: const MyCatalogScreen(),
                ));
      case Routes.purchaseOrdersScreen:
        return MaterialPageRoute(
            builder: (_) => MainShellWidget(
                  child: const PurchaseOrdersScreen(),
                ));
      case Routes.supplierOffersScreen:
        return MaterialPageRoute(
            builder: (_) => MainShellWidget(
                  child: const SupplierOffersScreen(),
                ));

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
