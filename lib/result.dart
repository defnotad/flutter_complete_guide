import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;

  Result(this.resultScore, this.restart);

  String get resultPhrase {
    String resultText;
    resultText = 'Great job!, your total score is: $resultScore';
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
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Take it again!'),
            textColor: Colors.blue,
            onPressed: restart,
          ),
        ],
      ),
    );
  }
}
