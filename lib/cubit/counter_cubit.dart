
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0); // the state value is initially 0 

  void increment() => emit(state + 1); // increment function  emit() is used to change the state value
  void decrement() {
    if(state > 0) {
      emit(state - 1);
  } // decrement function
}
}

