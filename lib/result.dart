import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (totalScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetHandler,
            textColor: Colors.blue,
            child: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
