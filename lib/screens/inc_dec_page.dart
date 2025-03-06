import 'package:bloc_practice/bloc/counter_bloc.dart';
import 'package:bloc_practice/bloc/counter_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context); 
    return Scaffold(
       floatingActionButton: Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //if you have two FAB then gave them herotag to not behave like same and you wont get this exception
        FloatingActionButton(
          heroTag: "increment_tag",
          onPressed:(){
            counterBloc.add(CounterIncremented());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          heroTag: "decrement_tag",
          onPressed: (){
            counterBloc.add(CounterDecremented());
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.minimize),
        ), // This trailing co
      ],
    )
    );
  }
}