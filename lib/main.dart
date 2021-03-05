import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    List<Map<String, Object>> questions = [
      {
        'questionText': 'What is your favorite city?',
        'answers': ['London', 'Kyiv', 'Moscow', 'New York']
      },
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Yellow', 'Blue', 'Green', 'Red']
      },
      {
        'questionText': "What's your favorite number?",
        'answers': ['Infinity', 'Thirteen', 'Hundred', 'Zero']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...((questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))).toList(),
          ],
        ),
      ),
    );
  }
}
