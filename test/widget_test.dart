import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:weekend_wizard/widgets/home_page.dart';

void main() {
  group('$HomePage', () {
    const String title = 'Some title';

    testWidgets('should display correct content in app bar',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage(title: title)));

      // Assert the app bar title
      expect(
          find.descendant(of: find.byType(AppBar), matching: find.text(title)),
          findsOneWidget);

      // Assert the app bar actions
      expect(find.byKey(const Key('brightness_toggle')), findsOneWidget);
      expect(find.byKey(const Key('notifications')), findsOneWidget);
    });

    testWidgets('should display content', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage(title: title)));

      expect(find.text('Add some content here'), findsOneWidget);
    });
  });
}
