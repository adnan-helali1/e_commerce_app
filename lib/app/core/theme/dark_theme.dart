import 'package:B2B/app/core/theme/app_color_scheme_extention.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

final darkTheme = ThemeData(
  fontFamily: 'Roboto',
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    surface: AppColors.darkSurface,
    error: AppColors.error,
    surfaceContainer: AppColors.blueCardDark,
    surfaceContainerHigh: AppColors.greenCardDark,
    surfaceContainerLow: AppColors.redCardDark,
    surfaceContainerHighest: AppColors.purpleCardDark,
    onSurface: Colors.white,
    onSurfaceVariant: Color(0xFF9CA3AF),
    outline: Color(0xFF4B5563),
  ),
  scaffoldBackgroundColor: AppColors.darkBackground,
  extensions: const [
    AppColorScheme(
      gradientStart: Color.fromARGB(255, 56, 84, 151), // أغمق
      gradientEnd: Color.fromARGB(255, 31, 43, 71),
      success: AppColors.success,
      warning: AppColors.warning,
      info: AppColors.info,
      cardBackground: AppColors.darkSurface,
      borderColor: AppColors.darkOutline,
      failure: AppColors.error,
    ),
  ],
);
