part of  'calc_bloc.dart';

@immutable
abstract class CalcEvent{}   //bloc solo recibira eventos que extiendan de esta clase

class ResetAC extends CalcEvent{}

class AddNumber extends CalcEvent{
  final String number;
  AddNumber(this.number);   //arguemento obligatorio
}

class ChangeSing extends CalcEvent{}

class Delete extends CalcEvent{}


class MathOperation extends CalcEvent{
  final String operation;

  MathOperation(this.operation);
}

class ResultOperation extends CalcEvent{}

