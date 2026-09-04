import 'package:B2B/app/core/connection/connection_builder.dart';
import 'package:B2B/app/core/connection/connection_status.dart';
import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/locale/locale_cubit.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/dark_theme.dart';
import 'package:B2B/app/core/theme/light_theme.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';
import 'package:B2B/app/features/auth/logic/auth_cubit.dart';
import 'package:B2B/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

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
            BlocProvider(create: (_) => ConnectivityCubit()),
            BlocProvider(
              create: (_) => getIt<AuthCubit>()..restoreSession(),
            ),
          ],
          child: BlocListener<AuthCubit, AuthStatus>(
            listener: (context, status) => _handleAuthStatus(status),
            child: BlocBuilder<ThemeModeCubit, ThemeMode>(
              builder: (context, mode) {
                return BlocBuilder<LocaleCubit, Locale>(
                  builder: (context, locale) {
                    return MaterialApp(
                      navigatorKey: navigatorKey,
                      scaffoldMessengerKey: scaffoldMessengerKey,
                      title: 'B2B App',
                      debugShowCheckedModeBanner: false,
                      locale: locale,
                      supportedLocales: AppLocalizations.supportedLocales,
                      localizationsDelegates:
                          AppLocalizations.localizationsDelegates,
                      initialRoute: Routes.authSplash,
                      onGenerateRoute: Routes.appRouter,
                      theme: lightTheme,
                      darkTheme: darkTheme,
                      themeMode: mode,
                      builder: (context, child) => ConnectionListener(
                        child: child ?? const SizedBox.shrink(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _handleAuthStatus(AuthStatus status) {
    if (status == AuthStatus.restoring) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final navigator = navigatorKey.currentState;
      if (navigator == null) return;

      final authenticated = status == AuthStatus.authenticated;
      navigator.pushNamedAndRemoveUntil(
        authenticated ? Routes.homescreen : Routes.loginscreen,
        (route) => false,
      );

      final message = switch (status) {
        AuthStatus.sessionExpired => 'انتهت الجلسة، يرجى تسجيل الدخول مجدداً.',
        AuthStatus.accountInactive =>
          'تم تعطيل الحساب، يرجى التواصل مع الإدارة.',
        _ => null,
      };
      if (message != null) {
        scaffoldMessengerKey.currentState?.showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
    });
  }
}
