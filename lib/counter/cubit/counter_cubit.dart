import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.dart';
part 'counter_cubit.freezed.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState.initial());

  void increment() {
    emit(state.when(
      initial: () => const CounterState.count(0),
      count: (number) => CounterState.count(number + 1),
    ));
  }

  void decrement() {
    emit(state.when(
      initial: () => const CounterState.count(0),
      count: (number) => CounterState.count(number - 1),
    ));
  }
  //  void increment() {
  //   emit(state.when(
  //       initial: () => const CounterState.count(0),
  //       count: (number) {
  //         () => CounterState.count(number + 1);
  //       }));
  // }
  // {
  // state.when(
  //     initial: () => const CounterState.count(0),
  //     count: (number) {
  //       return CounterCubit.when(
  //           incerement: () => CounterState.count(number + 1),
  //           decerement: () => CounterState.count(number - 1));
  //     });
  // }

  // void increment() {
  //   emit(state.copyWith(count: state.number + 1));
  // }

  // void decrement() {
  //   emit(state.copyWith(count: state.number - 1));
  // }
}
