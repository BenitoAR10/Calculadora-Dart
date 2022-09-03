import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'calc_state.dart';
part 'calc_event.dart';

class CalcBloc extends  Bloc<CalcEvent, CalcState>{

  CalcBloc() : super(CalcState());


  @override
  Stream<CalcState> mapEventToState(
    CalcEvent event,
  ) async*{

    if(event  is ResetAC){
      yield CalcState(
        firstValue: '0',
        mathResult: '0',
        secondValue: '0',
        operation: 'none'
      );
    }else if(event is AddNumber){
      yield CalcState(
          firstValue: '0',
          operation: 'none',
          secondValue: '0',
          mathResult: (state.mathResult == '0')
                      ? event.number
                      : state.mathResult + event.number,
      );
    }

  }
}