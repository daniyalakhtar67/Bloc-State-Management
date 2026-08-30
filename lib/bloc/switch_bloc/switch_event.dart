import 'package:equatable/equatable.dart';

abstract class SwitchEvent {
  const SwitchEvent();
  @override
  List<Object?> get props => [];
}

class EnableorDiableNotification extends SwitchEvent{}

class SliderEvent extends SwitchEvent{}