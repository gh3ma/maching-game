import 'package:flutter/material.dart';


  void main (){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 107, 96, 86),
      appBar: AppBar(
        title: const Text(
          'Maching game',
          style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.bold,
            color: Colors.black,
          ),        
        ),
      backgroundColor: Color.fromARGB(255, 255, 167, 15),
      ),
      body: ImagePage(),
    ),
  ),
  );
  }

class ImagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [
        Text(
          'The first game',
          style: 
          TextStyle(
            fontSize: 24,
          ),
          ),

      ],
    );
  }
}