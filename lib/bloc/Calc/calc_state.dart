part of 'calc_bloc.dart';

// clase para mantener informacion en un state
class CalcState{
  final String mathResult;
  final String firstValue;
  final String secondValue;
  final String operation;

  CalcState({
    //estado inicial con valores determinados
    this.mathResult = '0',
    this.firstValue = '',
    this.secondValue = '',
    this.operation = ''
  });

  CalcState copyWith({        //copyWith regresa un nuevo estado de la misma clase calcstate
    String? mathResult,       //propiedades son opcionales
    String? firstValue,
    String? secondValue,
    String? operation,
  }) => CalcState(
    mathResult: mathResult ?? this.mathResult,  //si no recibimos algun argumento tomamos el valor que ya tenemos
    firstValue: firstValue ?? this.firstValue,
    secondValue: secondValue ?? this.secondValue,
    operation: operation ?? this.operation,
  );
}