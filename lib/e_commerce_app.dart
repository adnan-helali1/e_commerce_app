import 'package:B2B/app/core/helpers/constans.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/dark_theme.dart';
import 'package:B2B/app/core/theme/light_theme.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        return BlocProvider(
          create: (_) => ThemeModeCubit(),
          child: BlocBuilder<ThemeModeCubit, ThemeMode>(
            builder: (context, mode) {
              return MaterialApp(
                title: 'B2B App',
                debugShowCheckedModeBanner: false,
                initialRoute:
                    isLoggedInUser ? Routes.homescreen : Routes.loginscreen,
                onGenerateRoute: Routes.appRouter,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: mode,
              );
            },
          ),
        );
      },
    );
  }
}
/*return ScreenUtilInit(
      designSize: const Size(440, 956),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, mode) {
        return MaterialApp(
          title: 'B2B App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.appRouter,
          initialRoute: Routes.homescreen,
          //   initialRoute: isLoggedInUser ? Routes.homescreen : Routes.loginscreen,
          theme: lightTheme,
          darkTheme: darkTheme,
          //  themeMode: mode,
        );
      },
    );*/
