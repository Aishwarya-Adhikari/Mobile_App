
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main(){
  runApp(Calculator());
}
//stl-stateless
class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculation",
      home: homePage(),
    );
  }
}
//stf-statefull
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => homePageState();
}
//always write after state
class homePageState extends State<homePage> {
  String result="";
  TextEditingController num1 =TextEditingController(text: "");//storage for datas
  TextEditingController num2 =TextEditingController(text: "");
  void add(){
    
      
      if((num1.text=="") || (num2.text==""))
      {
        setState(() {
        result="Enter a valid input";
      });
      }
      else {
        setState(() {
          
      
       result= "${ int.parse(num1.text) + int.parse(num2.text)}";
       });
      }
    
  }
  void sub(){

     if((num1.text== "") || (num2.text== ""))
      {
        setState(() {
        result="Enter a valid input";
      });
      }
else{
    setState(() {
      result= "${int.parse(num1.text) - int.parse(num2.text)}";
    });
  }
  }
  void mul(){
     if((num1.text== "" )|| (num2.text== ""))
      {
        setState(() {
        result="Enter a valid input";
      });
      }
      else{
    setState(() {
      result= "${int.parse(num1.text) * int.parse(num2.text)}";

    });
  }}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text(
          "CALCULATOR",
          style: TextStyle(color: Color.fromARGB(255, 1, 3, 18)),
        ),
        
      ),

      body: Column(
        children: [
          //yo decide garna lai kun kasko vanera,
          Container( width:200,child:  TextField(controller: num1,decoration: InputDecoration(hintText: "1st number"))),// hinttext ma no. lekhda text harauxa
          
          Container(width:200, child:TextField(controller: num2,decoration: InputDecoration(labelText: "2nd number"),)),//labeltext ma no. lekhda text mathijanxa, ani you can type number
          SizedBox(height:50),
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Padding(

                padding: const EdgeInsets.only(right: 8.0),
                child: Text("OUTPUT:"),
              ),
              Text("$result"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child: ElevatedButton(onPressed: add, child: Text("+",style: TextStyle( color: Colors.black,fontSize: 50),))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child: ElevatedButton(onPressed: sub, child: Text("-",style: TextStyle(color: Colors.black,fontSize: 50),))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child: ElevatedButton(onPressed: mul, child: Text("*",style: TextStyle(color: Colors.black,fontSize: 50),))),
              )
            ],
          )
        ],
      )
    );
  }
}