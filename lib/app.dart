import 'package:bloc_counter_app/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

class CounterApp extends MaterialApp {
  const CounterApp({Key? key})
      : super(
          key: key,
          home: const CounterPage(),
        );
}
