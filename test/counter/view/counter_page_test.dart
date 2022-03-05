// ignore_for_file: prefer_const_constructors

import 'package:bloc_counter_app/counter/view/counter_page.dart';
import 'package:bloc_counter_app/counter/view/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter Page', () {
    testWidgets('Render CounterVeiw', (tester) async {
      await tester.pumpWidget(MaterialApp(home: CounterPage()));

      expect(find.byType(CounterView), findsOneWidget);
    });
  });
}
