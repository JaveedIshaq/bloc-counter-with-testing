import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  /// add one to the current state
  void increment() => emit(state + 1);

  /// Subtract one from the current state
  void decrement() => emit(state - 1);
}
