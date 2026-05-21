import 'package:B2B/app/core/theme/app_color_scheme_extention.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension ThemeGetter on BuildContext {
  ColorScheme get cs => Theme.of(this).colorScheme;
  AppColorScheme get appColors => Theme.of(this).extension<AppColorScheme>()!;
}

extension StringExtension on String? {
  /// Check if string is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Check if string is not null and not empty
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Format API date like `2026-05-21 17:53:36` to `dd/MM/yyyy`.
  String get toDayMonthYear {
    if (this == null || this!.isEmpty) return '';

    final normalized = this!.replaceFirst(' ', 'T');
    final parsedDate = DateTime.tryParse(normalized);
    if (parsedDate == null) return this!;

    final day = parsedDate.day.toString().padLeft(2, '0');
    final month = parsedDate.month.toString().padLeft(2, '0');
    final year = parsedDate.year.toString();
    return '$day/$month/$year';
  }
}
