import 'dart:async';

import 'package:assignment_ui/GridView_UI.dart';
import 'package:assignment_ui/stackdemo.dart';
import 'package:assignment_ui/stackwithgrid.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SpashScreen(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class SpashScreen extends StatefulWidget {
  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  void initState(){
    Timer(Duration(seconds: 10), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Stack_UI()));
    });

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: const Text("Assignments"),),
    body: Center(
      child: Column( mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Image(image: AssetImage("assets/images/windows.png"),height: 200,width: 200,),
        Text("MY ASSIGNMENTS",style: TextStyle(
          fontSize: 40,
          color: Color.fromARGB(255, 3, 40, 58),
          fontWeight: FontWeight.bold),)
      ],
      ),
    ),
   );
  }
}

