import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController val1=TextEditingController();
  TextEditingController val2= TextEditingController();
int _sum=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull addition"),
        ),
        body: SingleChildScrollView(
          child:Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: val1,
                  decoration: InputDecoration(
                      hintText: "val1",
                      labelText: "val1",
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
                      var getval2= int.parse(val2.text);

                      print(getval1+getval2);
                      setState(() {
                        _sum=getval1+getval2;
                      });

                      print(_sum);
                    },
                    child: Text("submit"),

                  ),
                ),
                SizedBox(height: 20,),
                Text(_sum.toString()),
                SizedBox(height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculator()), );

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
