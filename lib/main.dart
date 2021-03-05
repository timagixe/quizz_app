import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Button clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text('Question 1'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 4'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
