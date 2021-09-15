import 'package:flutter/material.dart';
import 'package:sub_mission_1_calculator/button_widget.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:sub_mission_1_calculator/kalkulator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Kalkulator(),
    );
  }
}
