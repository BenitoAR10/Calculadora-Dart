
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculadora/bloc/Calc/calc_bloc.dart';
import 'package:calculadora/widgets/calc_button.dart';
import '../widgets/results.dart';




class CalcScreen extends StatelessWidget {
  const CalcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final calcBloc = BlocProvider.of<CalcBloc>(context);

    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric( horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),

                Results(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                        text: 'AC',
                        bgColor: Color(0xffA5A5A5),
                        onPressed: () => calcBloc.add(ResetAC()),
                    ),
                    CalcButton(
                      text: '+/-',
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () => calcBloc.add(ChangeSing()),
                    ),
                    CalcButton(
                      text: 'DEL',
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () => calcBloc.add(Delete()),
                    ),
                    CalcButton(
                      text: '/',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => calcBloc.add(MathOperation('/')),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '7',
                      onPressed: () => calcBloc.add(AddNumber('7')),
                    ),
                    CalcButton(
                      text: '8',
                      onPressed: () => calcBloc.add(AddNumber('8')),
                    ),
                    CalcButton(
                      text: '9',
                      onPressed: () => calcBloc.add(AddNumber('9')),
                    ),
                    CalcButton(
                      text: 'x',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => calcBloc.add(MathOperation('x')),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '4',
                      onPressed: () => calcBloc.add(AddNumber('4')),
                    ),
                    CalcButton(
                      text: '5',
                      onPressed: () => calcBloc.add(AddNumber('5')),
                    ),
                    CalcButton(
                      text: '6',
                      onPressed: () => calcBloc.add(AddNumber('6')),
                    ),
                    CalcButton(
                      text: '-',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => calcBloc.add(MathOperation('-')),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '1',
                      onPressed: () => calcBloc.add(AddNumber('1')),
                    ),
                    CalcButton(
                      text: '2',
                      onPressed: () => calcBloc.add(AddNumber('2')),
                    ),
                    CalcButton(
                      text: '3',
                      onPressed: () => calcBloc.add(AddNumber('3')),
                    ),
                    CalcButton(
                      text: '+',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => calcBloc.add(MathOperation('+')),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '0',
                      big: true,
                      onPressed: () => calcBloc.add(AddNumber('0')),
                    ),
                    CalcButton(
                      text: '.',
                      onPressed: () => calcBloc.add(AddNumber('.')),
                    ),
                    CalcButton(
                      text: '=',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => calcBloc.add((ResultOperation())),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
