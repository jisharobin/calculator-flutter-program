import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Subf extends StatefulWidget {
  const Subf({Key? key}) : super(key: key);

  @override
  State<Subf> createState() => _SubfState();
}

class _SubfState extends State<Subf> {

  TextEditingController val1=TextEditingController();
  TextEditingController val2=TextEditingController();
int _subval=0;
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
                      setState(() {
                        _subval=getval1 - getval2;
                      });
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
                  ),),
                SizedBox(height: 20,),
                Text(_subval.toString())

              ],
            ),
          ),
        ),
      ),
    );
  }
}
