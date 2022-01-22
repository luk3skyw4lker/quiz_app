import 'package:flutter/material.dart';

import './answer_button.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> answers;
  final Function answerQuestion;
  final String questionText;

  const Quiz({
    Key? key,
    required this.questionText,
    required this.answers,
    required this.answerQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(
            question: questionText,
          ),
          ...answers
              .map(
                (answer) => AnswerButton(
                  onPress: answerQuestion,
                  buttonText: answer['text'] as String,
                  answerScore: answer['score'] as int,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
