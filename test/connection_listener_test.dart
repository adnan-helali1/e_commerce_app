import 'dart:async';

import 'package:B2B/app/core/connection/connection_builder.dart';
import 'package:B2B/app/core/connection/connection_status.dart';
import 'package:B2B/app/core/theme/light_theme.dart';
import 'package:B2B/l10n/app_localizations.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows offline and restored connection snackbars',
      (tester) async {
    final changes = StreamController<List<ConnectivityResult>>.broadcast();
    addTearDown(changes.close);
    final cubit = ConnectivityCubit(
      changes: changes.stream,
      checkConnectivity: () async => [ConnectivityResult.wifi],
    );
    addTearDown(cubit.close);

    await tester.pumpWidget(
      BlocProvider.value(
        value: cubit,
        child: MaterialApp(
          locale: const Locale('en'),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: lightTheme,
          home: const ConnectionListener(
            child: Scaffold(body: SizedBox.expand()),
          ),
        ),
      ),
    );
    await tester.pump();

    changes.add([ConnectivityResult.none]);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));

    expect(
      find.text("You're offline. We'll keep showing your saved data."),
      findsOneWidget,
    );
    var snackBar = tester.widget<SnackBar>(find.byType(SnackBar));
    expect(snackBar.backgroundColor, lightTheme.colorScheme.error);

    changes.add([ConnectivityResult.wifi]);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));

    expect(
      find.text("You're back online. Refreshing with the latest data."),
      findsOneWidget,
    );
    snackBar = tester.widget<SnackBar>(find.byType(SnackBar));
    expect(snackBar.duration, const Duration(seconds: 3));
  });
}
