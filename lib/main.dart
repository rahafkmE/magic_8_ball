import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8Ball());
}

class Magic8Ball extends StatelessWidget {
  const Magic8Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(
            'Ask me anything',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: const Center(
          child: Img(),
        ),
      ),
    );
  }
}

class Img extends StatefulWidget {
  const Img({super.key});

  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  
  int numOfPic = 1;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          numOfPic = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('images/ball$numOfPic.png'),
    );
  }
}