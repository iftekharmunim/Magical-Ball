import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MagicBall(),
  );
}

class MagicBall extends StatelessWidget {
  // const MagicBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.grey,
        ),
        body: AnswerBall(),
      ),
    );
  }
}

class AnswerBall extends StatefulWidget {
  // const AnswerBall({Key? key}) : super(key: key);

  @override
  _AnswerBallState createState() => _AnswerBallState();
}

class _AnswerBallState extends State<AnswerBall> {
  int ballNumber = 1;

  void updateBall() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {setState(() {
          updateBall();
        });},
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
