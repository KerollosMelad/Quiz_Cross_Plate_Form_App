import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _onPressed;
  final String _answerText;

  const Answer(this._answerText, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answerText),
        onPressed: this._onPressed,
      ),
    );
  }
}
