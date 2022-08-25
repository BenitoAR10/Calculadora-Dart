import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
    );
  }
}
class Calculadora extends StatefulWidget{
  @override
  _CalculadoraState createState() => _CalculadoraState();
}
class _CalculadoraState extends State<Calculadora> {
  dynamic displaxtxt = 20;
  Widget calbutton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
      child: RaisedButton(
        onPressed: (){
          cal(btntxt);
        },
        child: Text('$btntxt',
        style: TextStyle(
          fontSize: 30,
          color: txtcolor,
        ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      /*appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Colors.black,
      ),*/
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('$text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calbutton('',Colors.grey.shade900, Colors.red),
                calbutton('C',Colors.grey.shade900, Colors.red),
                calbutton('',Colors.grey.shade900, Colors.red),
                calbutton('÷', Colors.grey.shade900, Colors.amber.shade400),
              ],
            ),
            SizedBox(height: 10,),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  calbutton('7', Colors.grey.shade900, Colors.purple.shade100),
                  calbutton('8', Colors.grey.shade900, Colors.purple.shade100),
                  calbutton('9', Colors.grey.shade900, Colors.purple.shade100),
                  calbutton('x', Colors.grey.shade900, Colors.amber.shade400),
                ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calbutton('4', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('5', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('6', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('-', Colors.grey.shade900, Colors.amber.shade400),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calbutton('1', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('2', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('3', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('+', Colors.grey.shade900, Colors.amber.shade400),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calbutton('', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('0', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('.', Colors.grey.shade900, Colors.purple.shade100),
                calbutton('=', Colors.amber.shade400, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
  dynamic text = '0';
  double num1 = 0;
  double num2 = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic op = '';
  dynamic preOp = '';

  void cal(btnText){
    if(btnText == 'C'){
      text = '0';
      num1 = 0;
      num2 = 0;
      result = '';
      finalResult = '0';
      op = '';
      preOp = '';
    }
    else if( op == '=' && btnText == '='){
      if(preOp == '+'){
        finalResult = sum();
      }else if(preOp == '-'){
        finalResult = res();
      }else if(preOp == 'x'){
        finalResult = mul();
      }else if(preOp == '÷'){
        finalResult = div();
      }
    }else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '÷' || btnText == '='){
      if(num1 == 0){
        num1 = double.parse(result);
      }else{
        num2 = double.parse(result);
      }

      if(op == '+'){
        finalResult = sum();
      }else if(op == '-'){
        finalResult = res();
      }else if(op == '+') {
        finalResult = mul();
      }else if(op == '/'){
        finalResult = div();
      }
      preOp = op;
      op = btnText;
      result = '';
    }

    else{
      result = result + btnText;
      finalResult = result;
    }
    setState(() {
      text = finalResult;
    });
  }

  String sum(){
    result = (num1 + num2).toString();
    num1 = double.parse(result);
    return tieneDecimal(result);
  }
  String res(){
    result = (num1 - num2).toString();
    num1 = double.parse(result);
    return tieneDecimal(result);
  }
  String mul(){
    result = (num1 * num2).toString();
    num1 = double.parse(result);
    return tieneDecimal(result);
  }
  String div(){
    result = (num1 / num2).toString();
    num1 = double.parse(result);
    return tieneDecimal(result);
  }

  String tieneDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}

