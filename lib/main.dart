import 'package:flutter/material.dart';
import 'dart:math';


  void main (){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 66, 48),
      appBar: AppBar(
        title: Text(
          'Abdusselam Hıjazı ',
          style: TextStyle(
            fontSize: 25,

          ),
        
        ),
        backgroundColor: Color.fromARGB(255, 245, 108, 4),
      ),
    ),
  ),
  );
  }

  class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}