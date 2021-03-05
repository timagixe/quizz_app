import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => _questionIndex = _questionIndex + 1);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What is your favorite city?',
      'What\'s your favorite color?',
      "What's your favorite number"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
