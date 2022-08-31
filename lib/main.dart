import 'package:calculadora/screens/calc_screen.dart';
import 'package:flutter/material.dart';


void main ()=> runApp(MyApp());

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
