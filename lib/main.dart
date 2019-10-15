import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// For function witch only have one and exactly expression
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Choosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s youe favorite color?',
      'What\'s yoir favoritte animal? '
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Frist App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 2 choosen!'),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                // ...
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
