import 'package:calculadora/bloc/Calc/calc_bloc.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'line_separator.dart';
import 'main_result.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalcBloc, CalcState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstValue),
            SubResult(text: state.operation),
            SubResult(text: state.secondValue),
            LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      }
    );
  }
}
