import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _questionIndex = _questionIndex + 1);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  static const List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is your favorite city?',
      'answers': [
        {
          'text': 'London',
          'score': 5,
        },
        {
          'text': 'Kyiv',
          'score': 1,
        },
        {
          'text': 'Moscow',
          'score': 10,
        },
        {
          'text': 'New York',
          'score': 5,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Yellow',
          'score': 1,
        },
        {
          'text': 'Blue',
          'score': 7,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'Red',
          'score': 5,
        },
      ]
    },
    {
      'questionText': "What's your favorite number?",
      'answers': [
        {
          'text': 'Infinity',
          'score': 1,
        },
        {
          'text': 'Thirteen',
          'score': 1,
        },
        {
          'text': 'Hundred',
          'score': 5,
        },
        {
          'text': 'Zero',
          'score': 5,
        },
      ]
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
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(
                resultScore: _totalScore,
                onPressReset: _resetQuiz,
              ),
      ),
    );
  }
}
