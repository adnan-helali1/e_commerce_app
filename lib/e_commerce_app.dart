import 'package:e_commerce_app/app/core/routing/app_router.dart';
import 'package:e_commerce_app/app/core/routing/routes.dart';
import 'package:e_commerce_app/app/core/theme/dark_theme.dart';
import 'package:e_commerce_app/app/core/theme/light_theme.dart';
import 'package:e_commerce_app/app/features/auth/ui/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final appRouter = AppRouter();

    return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'B2B App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter().generateRoute,
          initialRoute: Routes.loginscreen,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
