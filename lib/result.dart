import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function onPressReset;

  Result({
    @required this.resultScore,
    @required this.onPressReset,
  });

  String get resultText {
    String text;
    if (resultScore <= 3) {
      text = 'You did it awesome';
    } else if (resultScore <= 8) {
      text = 'Not so bad';
    } else if (resultScore <= 12) {
      text = 'It could be better';
    } else {
      text = 'How dare are you!';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              resultText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextButton(
                onPressed: onPressReset,
                child: Text('Start again'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
