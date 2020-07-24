import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'what\'s you favorite color?',
      'answer': [
        {'text': 'black', 'score': 15},
        {'text': 'Red', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'what\'s you favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 4},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 5},
        {'text': 'Dobera', 'score': 3},
        {'text': 'Mosh', 'score': 2},
      ]
    },
  ];

  int _totalScore = 0;
  void _answerQuestion(int score) {
    // re-render UI => call build again, but won't re-render all the page, just the part which is changed
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
