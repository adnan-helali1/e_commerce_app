// core/presentation/base_bloc_listener.dart

import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBlocListener<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  final Widget child;

  final bool Function(S state)? loadingWhen;
  final bool Function(S state)? successWhen;
  final bool Function(S state)? errorWhen;

  final String Function(S state)? successMessage;
  final String Function(S state)? errorMessage;

  final void Function(BuildContext context, S state)? onSuccess;

  final void Function(BuildContext context, S state)? onError;

  const BaseBlocListener({
    super.key,
    required this.child,
    this.loadingWhen,
    this.successWhen,
    this.errorWhen,
    this.successMessage,
    this.errorMessage,
    this.onSuccess,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listener: (context, state) {
        final isLoading = loadingWhen?.call(state) ?? false;

        final isSuccess = successWhen?.call(state) ?? false;

        final isError = errorWhen?.call(state) ?? false;

        /// LOADING
        if (isLoading) {
          _showLoading(context);
          return;
        }

        /// SUCCESS
        if (isSuccess) {
          _hideLoading(context);

          final message = successMessage?.call(state);

          if (message != null && message.isNotEmpty) {
            _showSnackBar(
              context,
              message,
              false,
            );
          }

          onSuccess?.call(context, state);

          return;
        }

        /// ERROR
        if (isError) {
          _hideLoading(context);

          final message = errorMessage?.call(state);

          _showSnackBar(
            context,
            message ?? 'Something went wrong',
            true,
          );

          onError?.call(context, state);
        }
      },
      child: child,
    );
  }

  void _showLoading(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: 'Loading',
      transitionDuration: const Duration(
        milliseconds: 120,
      ),
      pageBuilder: (_, __, ___) {
        return const SizedBox.shrink();
      },
      transitionBuilder: (_, animation, __, ___) {
        return FadeTransition(
          opacity: animation,
          child: Material(
            color: Colors.black.withOpacity(
              0.18,
            ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(
                  18,
                ),
                decoration: BoxDecoration(
                  color: context.appColors.cardBackground,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: context.cs.primary,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _hideLoading(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.of(
        context,
        rootNavigator: true,
      ).pop();
    }
  }

  void _showSnackBar(
    BuildContext context,
    String message,
    bool isError,
  ) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
          backgroundColor: isError ? Colors.red : context.cs.primary,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          duration: const Duration(
            seconds: 2,
          ),
        ),
      );
  }
}
