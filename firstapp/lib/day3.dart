import 'package:flutter/material.dart';
void main(){
  runApp(myApp());

}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Items Listing",
    home: Scaffold(
      appBar: AppBar(
        title:   const Text("NOTES(4th SEM)",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(233, 3, 144, 231) ,
        leading: const  Icon(Icons.menu,color: Colors.white,),
        actions: const [
          
          Padding(
            padding: EdgeInsets.only( right:30.0),
            child: Icon(Icons.person,color:Colors.white, size: 40,),
          ),
          Padding(
            padding: EdgeInsets.only(right:10.0),
            child: Icon(Icons.search,color: Colors.white,size: 40,),
          )
          ],
      ),
      body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          
            Padding(
              padding: const EdgeInsets.only(bottom:15.0),
              child: Container(
              height: 60,
                color: Color.fromARGB(255, 94, 171, 234),
                
                child:const  Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                //  title:   const Text("Theory of Computation",style: TextStyle(color: Colors.white),),
                Padding(
                  padding: EdgeInsets.all(11.0),
                  child:  Icon( Icons.note_add_rounded, color: Colors.black, size: 40,),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Theory of Computation",style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                )
                ]),
              
                
                ),
            ),

        
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
             
              height: 60,
              color:  Color.fromARGB(255, 94, 171, 234),
            ),
          ),
        /*  Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
            height:60,
              color: Colors.red,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height:60,
              color: Colors.blue,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Container(
              height: 60,
              color: Colors.green,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: 60,
              color: Colors.pink,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: 60,
              color: Colors.brown,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: 60,
              color: Colors.red,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(
              height: 60,
              color: Color.fromARGB(255, 203, 212, 17),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Container(
              height: 60,
              color: Color.fromARGB(255, 198, 6, 201),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Container(
              height: 60,
              color: Color.fromARGB(255, 15, 214, 191),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Container(
              height: 60,
              color: Color.fromARGB(255, 138, 6, 65),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Container(
              height: 60,
              color: Color.fromARGB(255, 196, 234, 5),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Container(
              height: 60,
              color: Colors.red,
            
            ),
          ),*/

          /*Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),*/
          ],

      ),
    ),
    );
  }
}