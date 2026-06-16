import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:B2B/app/features/auth/logic/login/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/register/register_cubit.dart';
import 'package:B2B/app/features/auth/ui/screens/register_screen.dart';
import 'package:B2B/app/features/auth/ui/screens/loginscreen.dart';
import 'package:B2B/app/features/auth/ui/screens/forgotpasswordscreen.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/catalog/ui/screens/my_catalog_screen.dart';
import 'package:B2B/app/features/main_layout.dart';
import 'package:B2B/app/features/offers/ui/screens/offers_screen.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_offers/get_active_offers_cubit.dart';
import 'package:B2B/app/features/orders/ui/screens/create_order_screen.dart';
import 'package:B2B/app/features/orders/ui/screens/purchase_orders_screen.dart';
import 'package:B2B/app/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.registerscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );

      case Routes.forgotpasswordscreen:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );

      case Routes.homescreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => BottomNavCubit(),
            child: const MainLayout(),
          ),
        );

      case Routes.orderDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CatalogCubit>(),
            child: const MyCatalogScreen(),
          ),
        );
      case Routes.offersScreen:
        return MaterialPageRoute(
          builder: (_) => const OffersScreen(),
        );

      case Routes.purchaseOrdersScreen:
        return MaterialPageRoute(
          builder: (_) => const PurchaseOrdersScreen(),
        );
      case Routes.createOrderFromOffers:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<UiCreateOrderCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<GetActiveOffersCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<CreateOrderCubit>(),
              ),
            ],
            child: const CreateOrderFromOffersScreen(),
          ),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Page not found")),
          ),
        );
    }
  }
}
