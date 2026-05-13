import 'package:B2B/app/core/widgets/base_bloc_listner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseScreen<B extends StateStreamable<S>, S> extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    S state,
  ) builder;

  final bool Function(S state)? loadingWhen;
  final bool Function(S state)? successWhen;
  final bool Function(S state)? errorWhen;
  final bool Function(S state)? emptyWhen;

  final String Function(S state)? successMessage;
  final String Function(S state)? errorMessage;

  final void Function(BuildContext context, S state)? onSuccess;

  final void Function(BuildContext context, S state)? onError;

  final Widget? emptyWidget;
  final Widget? errorWidget;

  final EdgeInsetsGeometry padding;
  final bool useSafeArea;
  final Color? backgroundColor;
  final Decoration? backgroundDecoration;

  const BaseScreen({
    super.key,
    required this.builder,
    this.loadingWhen,
    this.successWhen,
    this.errorWhen,
    this.emptyWhen,
    this.successMessage,
    this.errorMessage,
    this.onSuccess,
    this.onError,
    this.emptyWidget,
    this.errorWidget,
    this.padding = const EdgeInsets.all(16),
    this.useSafeArea = true,
    this.backgroundColor,
    this.backgroundDecoration,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = BlocBuilder<B, S>(
      builder: (context, state) {
        final isEmpty = emptyWhen?.call(state) ?? false;

        final isError = errorWhen?.call(state) ?? false;

        /// EMPTY
        if (isEmpty) {
          return emptyWidget ??
              const Center(
                child: Text('No data found'),
              );
        }

        /// ERROR
        if (isError) {
          return errorWidget ??
              const Center(
                child: Text(
                  'Something went wrong',
                ),
              );
        }

        return builder(context, state);
      },
    );

    content = Padding(
      padding: padding,
      child: content,
    );

    if (useSafeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        decoration: backgroundDecoration,
        child: BaseBlocListener<B, S>(
          loadingWhen: loadingWhen,
          successWhen: successWhen,
          errorWhen: errorWhen,
          successMessage: successMessage,
          errorMessage: errorMessage,
          onSuccess: onSuccess,
          onError: onError,
          child: content,
        ),
      ),
    );
  }
}
