import 'package:bloc/bloc.dart';
import 'package:bloc_counter_app/cubit/count_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(number: 0));

  void increment() => emit(CounterState(number: state.number + 1));
  void decrement() => emit(CounterState(number: state.number - 1));
}
