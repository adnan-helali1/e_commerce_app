import 'package:B2B/app/core/connection/connection_status.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionListener extends StatelessWidget {
  const ConnectionListener({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectionStatus>(
      listenWhen: (previous, current) =>
          current == ConnectionStatus.disconnected ||
          previous == ConnectionStatus.disconnected,
      listener: (context, status) {
        final messenger = ScaffoldMessenger.of(context)..clearSnackBars();
        if (status == ConnectionStatus.disconnected) {
          messenger.showSnackBar(
            SnackBar(
              content: Text(context.l10n.offlineCachedDataMessage),
              backgroundColor: context.cs.error,
              duration: const Duration(days: 1),
              behavior: SnackBarBehavior.floating,
            ),
          );
          return;
        }

        messenger.showSnackBar(
          SnackBar(
            content: Text(context.l10n.connectionRestoredMessage),
            backgroundColor: context.appColors.success,
            duration: const Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: child,
    );
  }
}
