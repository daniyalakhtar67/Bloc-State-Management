import 'package:equatable/equatable.dart';

class SwitchState extends Equatable{
  bool isSwitch;
  double isSlider;
   SwitchState({
     this.isSlider=.4,
    this.isSwitch=false,
});
   SwitchState copyWith({bool? isSwitch, double? isSlider}){
     return SwitchState(
       isSwitch: isSwitch??this.isSwitch,
       isSlider: isSlider?? this.isSlider,
     );

   }
   List<Object?>get props =>[isSwitch];
}