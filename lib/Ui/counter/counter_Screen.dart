import 'package:Bloc/bloc/counter/bloc_counter.dart';
import 'package:Bloc/bloc/counter/counter_event.dart';
import 'package:Bloc/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<BlocCounter,CounterState>(builder: (context, state){
            return  Center(child: Text(state.counter.toString(),style: TextStyle(fontSize: 60)));
          }),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.read<BlocCounter>().add(IncrementCounter());
              }, child: Text('Increment')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){
                context.read<BlocCounter>().add(DecrementCounter());
              }, child: Text('Decrement')),
            ],
          )

        ],
      ),
    );
  }
}
