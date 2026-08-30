import 'package:equatable/equatable.dart';

class CounterState extends Equatable{
  final int  counter;
  const CounterState({
    this.counter=0,
  });
 CounterState copyWith({int?counter}){ // create a new instance of counterstate to help overwrite the value of counter
   return CounterState(
     counter: counter??this.counter,
   );
 }
  @override
  List<Object?> get props =>[counter];
}