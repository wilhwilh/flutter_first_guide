import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final, this tell that this value will never change after its initializacion in the constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // this made that the container take all width of screen
      width: double.infinity,
      //  (((child(= Content) Padding) Border) Margin)
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
