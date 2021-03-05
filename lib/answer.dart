import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function submitHandler;

  Answer(this.submitHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        child: Text('Answer button'),
        onPressed: submitHandler,
      ),
    );
  }
}
