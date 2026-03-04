// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widgets_collection/main.dart';

void main() {
  testWidgets('navigates to counter and increments', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    // home page should show navigation button
    expect(find.text('Go to counter'), findsOneWidget);

    // navigate to counter page
    await tester.tap(find.text('Go to counter'));
    await tester.pumpAndSettle();

    // counter value should start at 0
    expect(find.text('0'), findsOneWidget);

    // tap increment
    await tester.tap(
      find.byType(ElevatedButton).last,
    ); // button labeled Increment
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);
  });
}
