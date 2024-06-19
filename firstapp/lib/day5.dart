import 'package:firstapp/day4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
void main(){
  runApp(ScoreApp());

}
//after typing stl
class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SCORE APP",
      home:homePage(),
    );
  }
}
//after typing stf
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int scoreA=0;
  int scoreB=0;
  void increaseA()
  {
    setState(()
     {
      print(scoreA);
      scoreA++;
      
    });

  }
  void decreaseA()
  { setState(() {
    print(scoreA);
    scoreA--;
    
  });
  void increaseB()
  {
    setState(()
     {
      print(scoreB);
      scoreB++;
      
    });

  }
  void decreaseB()
  { setState(() {
    print(scoreB);
    scoreB--;
    
  });
  

  void reset()
  {
    setState(() {
      scoreA=0;
      scoreB=0;
      
    });

  }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    floatingActionButton: Container(
child: IconButton(onPressed: reset, icon:Icon(Icons.delete), ),
decoration: BoxDecoration(

  borderRadius: BorderRadius.circular(20), color: Colors.blueGrey),
      ),
      appBar: AppBar(
        title: Text(
          "Score App",
          style: TextStyle(color: Color.fromARGB(255, 3, 7, 227)),
        ),
        backgroundColor: Color.fromARGB(255, 238, 222, 3),
        centerTitle: true,
),
body: Column(
        children: [
          Text "Your Score",
            style: TextStyle(fontSize: 40),
          ]),
      
          Text("$score"),
          Row(
            children: [
              Container(
                child:
                    IconButton(onPressed: increase, icon: Icon(Icons.arrow_upward)),
            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
            style: TextStyle(fontSize: 50),

          ] 
     ),
      ); 
   
   
  }
}