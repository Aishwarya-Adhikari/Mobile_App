import 'package:flutter/material.dart';
void main(){
  runApp(const myApp());//no materialapp here

}
//type stl
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    //After return replace with previous code              
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "First App",
    home: Scaffold(
      //see inside scaffold
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,//for placing home button in center 
      floatingActionButton: Container(
         decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(30),  color: const Color.fromARGB(255, 57, 211, 62)),
        child:
           IconButton(onPressed: (){},
            icon: const Icon(Icons.home_filled,size: 40,color: Colors.white,),// for placing home button
      hoverColor:const Color.fromARGB(255, 127, 230, 130) ,// for color during hover
     
      ), ), 
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
      backgroundColor: Colors.blue,
      title: const Text("My Wallet",
      style: TextStyle(color: Colors.black,fontSize: 30, letterSpacing: 3
      ),
      ),
    ),
    // body is declared outside appbar
    
       body: const Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,//to place name address in whole page ko center
          children: [
          IconButton(onPressed: null, icon:  Icon (Icons.account_box, color: Color.fromARGB(255, 245, 242, 241), size: 60,),),  
          Text("Aishwarya Adhikari",
          style: TextStyle(fontSize: 20,letterSpacing: 2),),
          SizedBox(height: 10,),
          Text("Birtamode",
          style: TextStyle(fontSize: 20,letterSpacing: 2),),
          IconButton(onPressed: null, icon:Icon (Icons.account_balance_wallet, color: Color.fromARGB(255, 117, 49, 25), size: 40,),),
          Text("Pay Here",
          style: TextStyle( color:Color.fromARGB(255, 48, 6, 236),fontSize:  30,letterSpacing: 2, ),)
        ],)
        
        )
    ),
      

    );
  
   } 

}


