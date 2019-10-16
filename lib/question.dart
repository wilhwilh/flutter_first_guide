import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final, this tell that this value will never change after its initializacion in the constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}