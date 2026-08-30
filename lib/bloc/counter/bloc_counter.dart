import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class BlocCounter extends Bloc<CounterEvent, CounterState>{
  BlocCounter():super(CounterState()) // this shows by default State
  {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }
  void _increment(IncrementCounter event, Emitter<CounterState>emit){
    emit(state.copyWith(counter: state.counter+1));
  }
  void _decrement(DecrementCounter event, Emitter<CounterState>emit){
    emit(state.copyWith(counter: state.counter-1));
  }
}