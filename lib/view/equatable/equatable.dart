import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Person person = Person(name: 'Daniyal', age: 20);
        Person person1 = Person(name: 'Daniyal', age: 20);
        print(person.hashCode.toString());
        print(person1.hashCode.toString());
      }),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;
  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];

  // @override
  // bool operator == (Object other) {
  //   return  identical (this, other) ||
  //       other is Person && runtimeType == other.runtimeType && name == other.name && age == other.age;
  // }
  // @override
  // int get hashCode=> name.hashCode ^ age.hashCode;
}