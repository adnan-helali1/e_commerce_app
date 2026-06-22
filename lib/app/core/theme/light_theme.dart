import 'package:B2B/app/core/theme/app_color_scheme_extention.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

final lightTheme = ThemeData(
  fontFamily: 'Roboto',
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    surface: AppColors.lightSurface,
    error: AppColors.error,
    surfaceContainer: AppColors.blueCard,
    surfaceContainerHigh: AppColors.greenCard,
    surfaceContainerLow: AppColors.redCard,
    surfaceContainerHighest: AppColors.purpleCard,
    onSurface: Color(0xFF111827),
    onSurfaceVariant: Color(0xFF6B7280),
    outline: Color(0xFFE5E7EB),
  ),
  scaffoldBackgroundColor: AppColors.lightBackground,
  extensions: const [
    AppColorScheme(
      gradientStart: const Color(0xFF2C45CC),
      gradientEnd: const Color(0xFF5E38D0),
      success: AppColors.success,
      warning: AppColors.warning,
      info: AppColors.info,
      cardBackground: AppColors.lightSurface,
      borderColor: AppColors.lightOutline,
      failure: AppColors.error,
    ),
  ],
);
