import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Mul extends StatelessWidget {
TextEditingController val1=TextEditingController();
TextEditingController val2=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiplication"),
        ),
        body:
        SingleChildScrollView(
          child:Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: val1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: val2,
               decoration: InputDecoration(
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
                    print(getval2* getval1);
                  },
                  child: Text("Submit"),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child:
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculator()), );
                  },
                  child: Text("Back"),
                ),
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
