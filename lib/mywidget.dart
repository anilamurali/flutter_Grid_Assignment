import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget{
  final Color? bgcolor;
  final IconData icons;
  VoidCallback? onpress;
  String? label;
  MyCustomWidget({
    this.bgcolor= const Color.fromARGB(255, 72, 180, 235),
    required this.icons,
    this.onpress,
    this.label="hello",
    });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        title: Text(label!),
        leading: Icon(icons),
        onTap: onpress,
      ),

    );
  }
}