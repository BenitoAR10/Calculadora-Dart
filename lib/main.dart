import 'package:calculadora/bloc/Calc/calc_bloc.dart';
import 'package:calculadora/screens/calc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main ()=> runApp(AppState());

//separando AppState donde estaran mis bloc de la aplicacion

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CalcBloc>(create: ( _ ) => CalcBloc())
        ],
        child: MyApp()
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //Desactivamos el modo depuracion de la app
      title: 'Material App',
      home: CalcScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
    );
  }
}
