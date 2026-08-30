import 'package:Bloc/bloc/switch_bloc/switch_event.dart';
import 'package:Bloc/bloc/switch_bloc/switch_state.dart';
import 'package:bloc/bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent,SwitchState>{
  SwitchBloc():super(SwitchState()){
    on<EnableorDiableNotification>(enableordisablenotification);
    on<SliderEvent>(sliderfunction);
  }
  void enableordisablenotification(EnableorDiableNotification event,Emitter <SwitchState> emit){
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }
  void sliderfunction(SliderEvent event, Emitter<SwitchState>emit){
    emit(state.copyWith(isSlider: event.value));
  }
}

