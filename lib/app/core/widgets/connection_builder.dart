import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/connection_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionListener extends StatelessWidget {
  final Widget child;

  const ConnectionListener({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectionStatus>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        final messenger = ScaffoldMessenger.of(context);

        messenger.clearSnackBars();

        if (state == ConnectionStatus.disconnected) {
          messenger.showSnackBar(
            SnackBar(
              content: const Text("You lost the connection"),
              backgroundColor: context.appColors.warning,
              duration: const Duration(days: 1),
            ),
          );
        } else {
          messenger.showSnackBar(
            SnackBar(
              content: const Text("Connection restored"),
              backgroundColor: context.appColors.success,
              duration: const Duration(days: 3),
            ),
          );
        }
      },
      child: child,
    );
  }
}
