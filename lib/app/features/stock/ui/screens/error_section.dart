import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class StockErrorSection extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const StockErrorSection({
    required this.error,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline_rounded,
                size: 52, color: context.cs.error),
            verticalSpace(12),
            Text(
              error,
              textAlign: TextAlign.center,
              style: TextStyle(color: context.cs.onSurfaceVariant),
            ),
            verticalSpace(20),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
