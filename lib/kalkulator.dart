import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({Key key}) : super(key: key);

  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  String output = '';
  String _out = '0';
  double number1 = 0.0;
  double number2 = 0.0;
  String operand = '';

  pressed(String btn) {
    if (btn == 'AC') {
      _out = '0';
      number1 = 0.0;
      number2 = 0.0;
      operand = '';
    } else if (btn == 'C') {
      _out = _out.substring(0, _out.length - 1);
    } else if (btn == "/" ||
        btn == "x" ||
        btn == "+" ||
        btn == "-" ||
        btn == "%") {
      number1 = double.parse(output);
      operand = btn;
      _out = '0';
    } else if (btn == '.') {
      if (_out.contains('.')) {
        return;
      } else {
        _out = _out + btn;
      }
    } else if (btn == "=") {
      number2 = double.parse(output);
      if (operand == '/') {
        _out = (number1 / number2).toString();
      }
      if (operand == 'x') {
        _out = (number1 * number2).toString();
      }
      if (operand == '+') {
        _out = (number1 + number2).toString();
      }
      if (operand == '-') {
        _out = (number1 - number2).toString();
      }
      if (operand == '%') {
        _out = (number1 * 0.5).toString();
      }
      number1 = 0.0;
      number2 = 0.0;
      operand = '';
    } else {
      _out = _out + btn;
    }
    setState(() {
      output = double.parse(_out).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          output,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      buttonWidget("AC"),
                      buttonWidget("C"),
                      buttonWidget("%"),
                      buttonWidget("/"),
                    ],
                  ),
                  Row(
                    children: [
                      buttonWidget("7"),
                      buttonWidget("8"),
                      buttonWidget("9"),
                      buttonWidget("x"),
                    ],
                  ),
                  Row(
                    children: [
                      buttonWidget("4"),
                      buttonWidget("5"),
                      buttonWidget("6"),
                      buttonWidget("-"),
                    ],
                  ),
                  Row(
                    children: [
                      buttonWidget("1"),
                      buttonWidget("2"),
                      buttonWidget("3"),
                      buttonWidget("+"),
                    ],
                  ),
                  Row(
                    children: [
                      buttonWidget("0"),
                      buttonWidget("00"),
                      buttonWidget("."),
                      buttonWidget("="),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded buttonWidget(String btn) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () => pressed(btn),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: EdgeInsets.all(2),
              width: 75,
              height: 75,
              color: Colors.amber,
              child: Center(
                child: Text(
                  btn,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
