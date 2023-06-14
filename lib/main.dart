import 'package:calculator/screens/Operations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(Calculator());
class Calculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Calculator"),
        ),
        body:Operation(),
      ),
    );
  }
}
