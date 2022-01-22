import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Yellow', 'score': 1},
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 2},
        {'text': 'Red', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Snake', 'score': 20},
        {'text': 'Mouse', 'score': 5},
        {'text': 'Lion', 'score': 15},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionText:
                    _questions[_questionIndex]['questionText'] as String,
                answers: _questions[_questionIndex]['answers']
                    as List<Map<String, Object>>,
                answerQuestion: _answerQuestion,
              )
            : Result(
                finalScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
