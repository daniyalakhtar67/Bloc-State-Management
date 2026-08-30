import 'package:Bloc/bloc/switch_bloc/switch_bloc.dart';
import 'package:Bloc/bloc/switch_bloc/switch_event.dart';
import 'package:Bloc/bloc/switch_bloc/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Switchscreen extends StatefulWidget {
  const Switchscreen({super.key});

  @override
  State<Switchscreen> createState() => _SwitchscreenState();
}

class _SwitchscreenState extends State<Switchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Screen'),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notification'),
              BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
                return Switch(value: state.isSwitch,onChanged: (newValue){
                  context.read<SwitchBloc>().add(EnableorDiableNotification());
                });
              })
            ],
          ),
         BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
           return Container(
             height: 200,
             decoration: BoxDecoration(
               color: Colors.red.withOpacity(state.isSlider)
             ),
           );
         }),
          SizedBox(height: 50),
          BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
            return     Slider(value: state.isSlider, onChanged: (value){
              setState(() {
                value = value;
              });
            });
          })
        ],
      ),
      ),
    );
  }
}
