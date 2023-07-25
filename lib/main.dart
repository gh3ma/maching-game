import 'dart:math';
import 'package:flutter/material.dart';


  void main (){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 107, 96, 86),
      appBar: AppBar(
        title: const Text(
          'Dice game',
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


class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  
 var leftImageNumber = 5;
 var rightImageNumber = 3;

 void changeImage(){
   leftImageNumber = Random().nextInt(6) + 1 ; 
   rightImageNumber = Random().nextInt(6) + 1 ;

 }
  @override
  Widget build(BuildContext context) {


    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            leftImageNumber == rightImageNumber ? 
            'You win' : 'Try it again',
            style: 
            TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
            ),
        ),
          Row(
            children: [

            Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset(
                  'images/Dice$leftImageNumber.png',
                  ),
              ),
              ),
              
              Expanded(
              child: TextButton(
                onPressed: (){

                  setState(() {
                  changeImage();
                });
                },
                child: Image.asset(
                  'images/Dice$rightImageNumber.png',
                  ),
              ),
              ),
            ],
          ),

      ],
    );
  }

}
