import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Stack Demo"),),
    body: Center(
      child: Stack(
        children: [
          Container(color: Colors.amber,height: 500,width: 500,),
          Positioned(
            left: 20,
            bottom: 50,
            child: Container(color: Color.fromARGB(255, 255, 172, 64),height: 300,width: 300,)),
          Positioned(
            left: 70,
            top: 30,
            child: Container(color: Color.fromARGB(255, 224, 85, 20),height: 100,width: 100,))
        ],
      ),
    ),
   );
  }
  
}