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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Blue', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Snake', 'Elephant', 'Mouse'],
    }
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
          body: _questionIndex < _questions.length
              ? Column(
                  children: [
                    Question(
                      question:
                          _questions[_questionIndex]['questionText'] as String,
                    ),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map(
                          (answer) => AnswerButton(
                              onPress: _pressButton, buttonText: answer),
                        )
                        .toList()
                  ],
                )
              : const Center(
                  child: Text('Quiz answered, thanks!'),
                )),
    );
  }
}
