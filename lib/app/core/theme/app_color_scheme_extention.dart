import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color success;
  final Color failure;

  final Color warning;
  final Color info;
  final Color cardBackground;
  final Color borderColor;
  final Color gradientStart;
  final Color gradientEnd;

  const AppColorScheme({
    required this.success,
    required this.failure,
    required this.warning,
    required this.info,
    required this.cardBackground,
    required this.borderColor,
    required this.gradientStart,
    required this.gradientEnd,
  });

  @override
  AppColorScheme copyWith({
    Color? success,
    Color? failure,
    Color? warning,
    Color? info,
    Color? cardBackground,
    Color? borderColor,
    Color? gradientStart,
    Color? gradientEnd,
  }) {
    return AppColorScheme(
      gradientStart: gradientStart ?? this.gradientStart,
      gradientEnd: gradientEnd ?? this.gradientEnd,
      failure: failure ?? this.failure,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      cardBackground: cardBackground ?? this.cardBackground,
      borderColor: borderColor ?? this.borderColor,
    );
  }

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) return this;
    return AppColorScheme(
      gradientStart: Color.lerp(gradientStart, other.gradientStart, t)!,
      gradientEnd: Color.lerp(gradientEnd, other.gradientEnd, t)!,
      failure: Color.lerp(failure, other.failure, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
    );
  }
}
