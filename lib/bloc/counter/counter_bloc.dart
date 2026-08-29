// import 'package:bloc/bloc/counter/counter_screen.dart';
// import 'package:equatable/equatable.dart';
// class CounterBloc extends Bloc<CounterState, CounterState> {
//   CounterBloc() : super( CounterState()) {
//     on<Increment>(_increment);
//     on<Decrement>(_decrement);
//     on<SwitchEvent>(_changeSwitchButton);
//   }
//
//   void _increment(
//       Increment event,
//       Emitter<CounterState> emit,
//       ) {
//     emit(
//       state.copyWith(
//         counter: state.counter + 1,
//       ),
//     );
//   }
//
//   void _decrement(
//       Decrement event,
//       Emitter<CounterState> emit,
//       ) {
//     emit(
//       state.copyWith(
//         counter: state.counter - 1,
//       ),
//     );
//   }
//
//   void _changeSwitchButton(
//       SwitchEvent event,
//       Emitter<CounterState> emit,
//       ) {
//     emit(
//       state.copyWith(
//         isSwitchOn: !state.isSwitchOn,
//       ),
//     );
//   }
// }