import 'package:equatable/equatable.dart';
abstract class CounterState extends Equatable{
  CounterState();
  @override
  List<Object?>get props => [];
}
class Increment extends CounterState{}
class Decrement extends CounterState{}
class SwitchEvent extends CounterState{}

