import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    if (score <= 15)
      return 'You are awesome and innocent!';
    else if (score <= 20)
      return 'Pretty likeable!';
    else if (score <= 25)
      return 'You are ... strange!';
    else
      return 'You are so bad!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Reset Quiz !'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
