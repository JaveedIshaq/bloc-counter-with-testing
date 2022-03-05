import 'package:bloc/bloc.dart';
import 'dart:developer' show log;

/// {@template counter_observer}
/// [CounterObserver] for the counter application
/// which observers all state changes
/// {@endtamplate}

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} $change');
  }
}
