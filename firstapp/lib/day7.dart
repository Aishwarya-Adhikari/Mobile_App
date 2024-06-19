
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
      body: Image.asset('images/IMG_5505.jpeg')
      
      );
  }
}