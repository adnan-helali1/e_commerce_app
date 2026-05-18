import 'package:B2B/app/core/helpers/constans.dart';
import 'package:B2B/app/core/routing/app_router.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/dark_theme.dart';
import 'package:B2B/app/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'B2B App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter().generateRoute,
          initialRoute: Routes.supplierOffersScreen,
          //  isLoggedInUser ? Routes.forgotpasswordscreen : Routes.loginscreen,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
