import 'package:flutter/material.dart';

import './answer_button.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  var _questionIndex = 0;

  void _pressButton() {
    setState(() {
      if (_questionIndex == _questions.length - 1) {
        _questionIndex = 0;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Quiz'),
        ),
        body: Column(
          children: [
            Question(
              question: _questions[_questionIndex],
            ),
            AnswerButton(onPress: _pressButton, buttonText: 'Answer 1!'),
            AnswerButton(onPress: _pressButton, buttonText: 'Answer 2!'),
            AnswerButton(onPress: _pressButton, buttonText: 'Answer 3!'),
          ],
        ),
      ),
    );
  }
}
