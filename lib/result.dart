import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = 'You are so bad.';
    } else if (resultScore <= 15) {
      resultText = 'Okay...';
    } else if (resultScore <= 25) {
      resultText = 'Pretty good!';
    } else {
      resultText = 'You are awesome!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(child: Text('Restart Quiz!'), onPressed: resetHandler,)
      ],
    ));
  }
}
