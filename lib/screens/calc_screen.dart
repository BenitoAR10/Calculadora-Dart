import 'package:calculadora/widgets/calc_button.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:flutter/material.dart';

import '../widgets/sub_result.dart';



class CalcScreen extends StatelessWidget {
  const CalcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric( horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),

                SubResult( text: '1000'),
                SubResult(text: 'X'),
                SubResult(text: '1000'),
                LineSeparator(),
                MainResultText(text: '2000'),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                        text: 'AC',
                        bgColor: Color(0xffA5A5A5),
                        onPressed: () => print('AC'),
                    ),
                    CalcButton(
                      text: '+/-',
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () => print('+/-'),
                    ),
                    CalcButton(
                      text: 'DEL',
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () => print('DEL'),
                    ),
                    CalcButton(
                      text: '/',
                      bgColor: Color(0xffA5A5A5),
                      onPressed: () => print('/'),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '7',
                      onPressed: () => print('7'),
                    ),
                    CalcButton(
                      text: '8',
                      onPressed: () => print('8'),
                    ),
                    CalcButton(
                      text: '9',
                      onPressed: () => print('9'),
                    ),
                    CalcButton(
                      text: 'X',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => print('X'),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '4',
                      onPressed: () => print('4'),
                    ),
                    CalcButton(
                      text: '5',
                      onPressed: () => print('5'),
                    ),
                    CalcButton(
                      text: '6',
                      onPressed: () => print('6'),
                    ),
                    CalcButton(
                      text: '-',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => print('-'),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '1',
                      onPressed: () => print('1'),
                    ),
                    CalcButton(
                      text: '2',
                      onPressed: () => print('2'),
                    ),
                    CalcButton(
                      text: '3',
                      onPressed: () => print('3'),
                    ),
                    CalcButton(
                      text: '+',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => print('+'),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CalcButton(
                      text: '0',
                      big: true,
                      onPressed: () => print('0'),
                    ),
                    CalcButton(
                      text: '.',
                      onPressed: () => print('.'),
                    ),
                    CalcButton(
                      text: '=',
                      bgColor: Color(0xffF0A23B),
                      onPressed: () => print('='),
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
