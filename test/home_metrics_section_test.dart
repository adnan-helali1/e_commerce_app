import 'package:B2B/app/core/theme/light_theme.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/features/home/data/models/home_ui_models.dart';
import 'package:B2B/app/features/home/ui/widgets/home_metrics_section.dart';
import 'package:B2B/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  testWidgets('Spanish profit and low-stock cards do not overflow',
      (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    const metrics = [
      HomeMetric(
        title: 'Margen de beneficio',
        value: '24.75%',
        icon: Icons.inventory_2_outlined,
        tone: HomeMetricTone.warning,
      ),
      HomeMetric(
        title: 'Existencias bajas',
        value: '12',
        note: 'Artículos que necesitan reposición',
        icon: Icons.warning_amber_rounded,
        tone: HomeMetricTone.error,
      ),
    ];

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(440, 956),
        builder: (context, child) => MaterialApp(
          locale: const Locale('es'),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: lightTheme,
          home: const Scaffold(
            body: SingleChildScrollView(
              child: HomeMetricsSection(metrics: metrics),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Margen de beneficio'), findsOneWidget);
    expect(find.text('Existencias bajas'), findsOneWidget);
    expect(
        tester.getSize(find.byType(B2BInfoCard).first).height, lessThan(100));
    expect(tester.takeException(), isNull);
  });
}
