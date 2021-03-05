import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() => _questionIndex = _questionIndex + 1);
  }

  static const List<Map<String, Object>> _questions = [
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

  @override
  Widget build(BuildContext context) {
    final bool noMoreQuestions = _questionIndex >= _questions.length;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: !noMoreQuestions
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  ...((_questions[_questionIndex]['answers'] as List<String>)
                          .map((answer) => Answer(_answerQuestion, answer)))
                      .toList(),
                ],
              )
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
