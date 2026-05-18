import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class AppGradients {
  static LinearGradient authGradient(
    BuildContext context,
  ) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color.fromARGB(
          255,
          0,
          40,
          108,
        ),
        context.cs.primaryContainer,
        context.cs.primary,
        context.cs.secondaryFixed,
      ],
    );
  }
}
