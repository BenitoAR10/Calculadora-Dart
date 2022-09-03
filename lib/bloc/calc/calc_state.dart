part of 'calc_bloc.dart';

// clase para mantener informacion en un state
class CalcState{
  final String mathResult;
  final String firstValue;
  final String secondValue;
  final String operation;

  CalcState({
    //estado inicial con valores determinados
    this.mathResult = '30',
    this.firstValue = '10',
    this.secondValue = '20',
    this.operation = '+'
  });
}