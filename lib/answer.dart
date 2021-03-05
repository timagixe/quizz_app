import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function submitAnswer;
  final String answerText;

  Answer({
    @required this.submitAnswer,
    @required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: submitAnswer,
      ),
    );
  }
}
