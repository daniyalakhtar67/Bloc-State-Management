import 'package:Bloc/Ui/counter/counter_Screen.dart';
import 'package:Bloc/Ui/switch_example/switchscreen.dart';
import 'package:Bloc/bloc/counter/bloc_counter.dart';
import 'package:Bloc/bloc/image_picker/image_picker_bloc.dart';
import 'package:Bloc/bloc/switch_bloc/switch_bloc.dart';
import 'package:Bloc/utils/image_picker_utils.dart';
import 'package:Bloc/view/equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:
    [
      BlocProvider(create: (_)=>SwitchBloc()),
      BlocProvider(create: (_)=>BlocCounter()),
      BlocProvider(create: (_)=>ImagePickerBloc(ImagePickerUtils())),
    ], child:     MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Switchscreen(),
    ),
    );
  }
}
