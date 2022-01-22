import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function onPress;
  final String buttonText;
  final int answerScore;

  const AnswerButton({
    Key? key,
    required this.onPress,
    required this.buttonText,
    required this.answerScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 75,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: OutlinedButton(
          onPressed: () => onPress(answerScore),
          child: Text(buttonText),
          style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 1.0, color: Colors.blue),
              backgroundColor: Colors.white),
        ),
      ),
    );
  }
}
