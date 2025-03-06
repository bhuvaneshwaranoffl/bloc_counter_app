import "package:bloc_practice/bloc/counter_bloc.dart";
import "package:bloc_practice/screens/inc_dec_page.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

//only one instance should be created then only the state will be maintained
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc,int>(
              //bloc: counterCubit,
              builder: (context,counter) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }
            ),
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>IncDecPage()));
     },child: Icon(Icons.navigate_next_sharp),),
    );
  }
}
