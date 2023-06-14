import 'dart:ffi';

import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Div extends StatelessWidget {

TextEditingController val1=TextEditingController();
TextEditingController val2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Division"),
        ),
        body: SingleChildScrollView(
          child:
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: val1,
                decoration: InputDecoration(
                  hintText: "Val1",
                  labelText: "Val1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: val2,
                decoration: InputDecoration(
                  hintText: "val2",
                  labelText: "val2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    var getval1=int.parse(val1.text);
                    var getval2=int.parse(val2.text);
                    print(getval1 / getval2);

                  },
                  child: Text("Submit"),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculator()), );
                  },child: Text("Back"),
                ),
              )
            ],
          ),
        )
        )
      ),
    );
  }
}
