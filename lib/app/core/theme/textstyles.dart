import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle screenTitle(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
      fontWeight: FontWeight.w700,
      color: context.cs.onSurface,
      height: 1.1,
    );
  }

  static TextStyle screenSubtitle(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: context.cs.onSurfaceVariant,
      height: 1.4,
    );
  }

  static TextStyle label(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
      fontWeight: FontWeight.w600,
      color: context.cs.onSurface,
    );
  }

  static TextStyle fieldText(BuildContext context) {
    return Theme.of(
      context,
    ).textTheme.bodyMedium!.copyWith(color: context.cs.onSurface);
  }

  static TextStyle button(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
      fontWeight: FontWeight.w700,
      color: context.cs.onPrimary,
    );
  }

  static TextStyle note(BuildContext context) {
    return Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(color: context.cs.onSurfaceVariant);
  }
}
