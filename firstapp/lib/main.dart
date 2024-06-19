import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(photo());
}
class photo extends StatelessWidget {
  const photo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:" Recognise",
      home: homePage(),

    );
  }
}
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  // generates random number
    var random=Random();
    var choice='';
    void generate(){
      setState(() {
        // choice= random.nextInt(4) +1;
        choice=a.text;
      });
  }
  TextEditingController a =TextEditingController(text: "");//storage for datas
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,

        title: Text(
          "PHOTO SELECTOR",
          style: TextStyle(color: Colors.black),
        ),
        
      ),
      body: Container(

      decoration: BoxDecoration(border: Border.all(width: 10,color: Colors.white)),
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
          Container( width:200,child:  TextField(controller: a,decoration: InputDecoration(hintText: "Enter the photo of your choice"))),// hinttext ma no. lekhda text harauxa

            IconButton(onPressed: generate, icon:Icon(Icons.search)),
             Padding(
               padding: const EdgeInsets.only(right: 8.0),
               child: Container(
                height: 500,
                width: 800,
                child: Image.asset('images/${choice}.jpeg')),
             ),
             
        //  Padding(
        //    padding: const EdgeInsets.only(right:8.0),
        //    child: Image.asset('images/shyam.jpeg'),
        //  ),
        //  Padding(
        //    padding: const EdgeInsets.only(right:8.0),
        //    child: Image.asset('images/rita.jpeg'),
        //  ),
        //  Padding(
        //    padding: const EdgeInsets.only(right:8.0),
        //    child: Image.asset('images/sita.jpeg'),
        //  ),
        //  Padding(
        //    padding: const EdgeInsets.only(right:8.0),
        //    child: Image.asset('images/gita.jpeg'),
        //  ),
        
          ],
        ),
      ),
    );
  }
}
