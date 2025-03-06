import 'package:bloc_practice/bloc/counter_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// for bubit we only need the type but in bloc we need Event\\



class CounterBloc extends Bloc<Counter,int>{
  CounterBloc() :super(0){
    on<CounterIncremented>((event, emit) {
     emit(state+1);
    });

    on<CounterDecremented>((event,emit){
      emit(state-1);
    });
  }
}