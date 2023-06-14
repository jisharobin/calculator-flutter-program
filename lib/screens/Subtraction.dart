import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Sub extends StatelessWidget {

TextEditingController val1=TextEditingController();
TextEditingController val2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:   AppBar(
            title: Text("Subtraction"),
        ),
        body: SingleChildScrollView(

          child: Container(
            margin: EdgeInsets.all(10),
            child:  Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: val1,
                  decoration: InputDecoration(
                    hintText: "first no",
                    labelText: "first no",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: val2,
                  decoration: InputDecoration(
                    hintText: "sec no",
                    labelText: "sec no",
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
print(getval1 - getval2);

                    },
                    child:Text("submit"),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculator()),);
                  },
                  child: Text("Back"),
                ),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
