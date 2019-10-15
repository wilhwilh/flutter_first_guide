import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// For function witch only have one and exactly expression
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    // function to force re render of ui
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
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
