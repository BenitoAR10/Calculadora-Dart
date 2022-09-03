import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calculadora/bloc/Calc/calc_bloc.dart';
import 'package:meta/meta.dart';


part 'calc_state.dart';
part 'calc_event.dart';

class CalcBloc extends  Bloc<CalcEvent, CalcState>{

  CalcBloc() : super(CalcState());


  @override
  Stream<CalcState> mapEventToState(
    CalcEvent event,
  ) async*{

    //limpiar todo
    if(event  is ResetAC){
      yield* this._resetAC();        //yield* emite el valor que el stream emite

    //Agregar numeros
    }else if(event is AddNumber){    //mantener los valores del estado anterios al recibir un nuevo estado
      yield state.copyWith(
          mathResult: (state.mathResult == '0')
                      ? event.number
                      : state.mathResult + event.number,
      );
      //Cambiar signo
    } else if(event is ChangeSing){
      yield state.copyWith(
        mathResult: state.mathResult.contains('-')
                     ? state.mathResult.replaceFirst(('-'), '')  //si mathresult es negativo cambiamos a positivo poniendo un string vacio
                     : '-' + state.mathResult                    //caso contrario concatenamos un -
      );
      //Borrar ultimo digito
    }else if(event is Delete){
      yield state.copyWith(
        mathResult: state.mathResult.length > 1
                     ? state.mathResult.substring(0, state.mathResult.length-1)
                     : '0'
      );
      //operacion matematica
    }else if(event is MathOperation){
      yield state.copyWith(
        firstValue: state.mathResult,
        mathResult: '0',
        operation: event.operation,
        secondValue: '0'
      );
      //calcular resultado
    }else if(event is ResultOperation){
      yield* _mathResult();
    }


  }

  Stream<CalcState>_resetAC() async*{
    yield CalcState(
        firstValue: '0',
        mathResult: '0',
        secondValue: '0',
        operation: ''
    );
  }

  Stream<CalcState>_mathResult() async*{
    final double num1 = double.parse(state.firstValue);
    final double num2 = double.parse(state.mathResult);

    switch(state.operation){

      case '+':
        yield state.copyWith(
          secondValue: state.mathResult,
          mathResult: '${num1 + num2}'
        );
      break;
      case '-':
        yield state.copyWith(
          secondValue: state.mathResult,
          mathResult: '${num1 - num2}'
        );
      break;
      case 'x':
        yield state.copyWith(
            secondValue: state.mathResult,
            mathResult: '${num1 * num2}'
        );
        break;
      case '/':
        yield state.copyWith(
            secondValue: state.mathResult,
            mathResult: '${num1 / num2}'
        );
        break;      default:
        yield state;
    }
  }
}