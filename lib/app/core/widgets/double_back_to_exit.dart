import 'package:B2B/app/core/helpers/app_overlay_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoubleBackToExit extends StatefulWidget {
  const DoubleBackToExit({
    super.key,
    required this.child,
    this.onFirstBackPressed,
    required this.onSecondBackPressed,
    this.messageTwo = 'Click one more time to close the app',
  });

  final Widget child;
  final VoidCallback? onFirstBackPressed;
  final VoidCallback? onSecondBackPressed;
  final String messageTwo;

  @override
  State<DoubleBackToExit> createState() => _DoubleBackToExitState();
}

class _DoubleBackToExitState extends State<DoubleBackToExit> {
  DateTime? _lastBackPressed;

  Future<void> _handleBack() async {
    final now = DateTime.now();

    if (_lastBackPressed == null ||
        now.difference(_lastBackPressed!) > const Duration(seconds: 2)) {
      _lastBackPressed = now;

      widget.onFirstBackPressed?.call();

      AppOverlayMessage.show(
        context,
        message: widget.messageTwo,
      );

      return;
    }

    widget.onSecondBackPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        await _handleBack();
      },
      child: widget.child,
    );
  }
}
