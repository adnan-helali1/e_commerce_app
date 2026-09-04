import 'package:B2B/app/features/auth/ui/screens/auth_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('auth splash displays a loading indicator', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AuthSplashScreen()));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
