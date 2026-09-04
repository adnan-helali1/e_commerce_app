import 'package:B2B/app/core/helpers/constans.dart';
import 'package:B2B/app/core/locale/locale_cubit.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/dark_theme.dart';
import 'package:B2B/app/core/theme/light_theme.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';
import 'package:B2B/l10n/app_localizations.dart';
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
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => ThemeModeCubit()),
            BlocProvider(create: (_) => LocaleCubit()..load()),
          ],
          child: BlocBuilder<ThemeModeCubit, ThemeMode>(
            builder: (context, mode) {
              return BlocBuilder<LocaleCubit, Locale>(
                builder: (context, locale) {
                  return MaterialApp(
                    title: 'B2B App',
                    debugShowCheckedModeBanner: false,
                    locale: locale,
                    supportedLocales: AppLocalizations.supportedLocales,
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    initialRoute: isLoggedInUser
                        ? Routes.homescreen
                        : Routes.loginscreen,
                    onGenerateRoute: Routes.appRouter,
                    theme: lightTheme,
                    darkTheme: darkTheme,
                    themeMode: mode,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
