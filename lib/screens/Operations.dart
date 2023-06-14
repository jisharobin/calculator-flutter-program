import 'package:calculator/screens/Division.dart';
import 'package:calculator/screens/Multiplication.dart';
import 'package:calculator/screens/Subtraction.dart';
import 'package:calculator/screens/addition.dart';
import 'package:calculator/screens/divf.dart';
import 'package:calculator/screens/fullstate.dart';
import 'package:calculator/screens/mulfull.dart';
import 'package:calculator/screens/subfull.dart';
import 'package:flutter/material.dart';

class Operation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [

            SizedBox(height: 20,),
SizedBox(

  height: 60,
  width: double.infinity,
child:
  ElevatedButton(onPressed: (){
    //Navigator.push(context,MaterialPageRoute(builder: (context)=>Addition()), );
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Add()), );
  }, child:Text("add") ),
),
            SizedBox(height: 20,),
SizedBox(
  height: 60,
  width: double.infinity,
  child: ElevatedButton(onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Subf()),);
  }, child: Text("Sub")),
),
            SizedBox(height: 20,),
         SizedBox(
           height: 60,
           width: double.infinity,
           child: ElevatedButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Divfull()), );
           }, child:Text("Div")),
         ) ,
            SizedBox(height: 20,),
           SizedBox(height: 60,
           width: double.infinity,
           child:  ElevatedButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Mult()), );
           }, child: Text("Mul")),),


          ],
        ),
      ),
    );
  }
}
