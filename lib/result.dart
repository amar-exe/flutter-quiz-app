import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 6) {
      resultText = "You are normal";
    } else if (resultScore >= 7 && resultScore <= 13) {
      resultText = "You are wierd";
    } else {
      resultText = "You are insanse";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text("Reset quiz")),
        ],
      ),
    );
  }
}
