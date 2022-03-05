import 'package:bloc_counter_app/counter/cubit/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial State is 0', () {
      expect(CounterCubit().state, 0);
    });

    group('increment', () {
      blocTest<CounterCubit, int>(
        'emits [1] when state is 0',
        build: CounterCubit.new,
        act: (cubit) => cubit.increment(),
        expect: () => const <int>[1],
      );

      blocTest<CounterCubit, int>(
        'emits [1, 2] when invoked twice',
        build: CounterCubit.new,
        act: (cubit) => cubit
          ..increment()
          ..increment(),
        expect: () => const <int>[1, 2],
      );

      blocTest<CounterCubit, int>(
        'Emits [30] when state is 29',
        build: CounterCubit.new,
        seed: () => 29,
        act: (cubit) => cubit.increment(),
        expect: () => const <int>[30],
      );
    });

    group('decrement', () {
      blocTest<CounterCubit, int>(
        'emits [-1] when state is 0',
        build: CounterCubit.new,
        act: (cubit) => cubit.decrement(),
        expect: () => const <int>[-1],
      );

      blocTest<CounterCubit, int>(
        'emits [-1, -2] when invoked twice',
        build: CounterCubit.new,
        act: (cubit) => cubit
          ..decrement()
          ..decrement(),
        expect: () => const <int>[-1, -2],
      );

      blocTest<CounterCubit, int>(
        'Emits [29] when state is 30',
        build: CounterCubit.new,
        seed: () => 30,
        act: (cubit) => cubit.decrement(),
        expect: () => const <int>[29],
      );
    });
  });
}
