import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback onPress;
  final String buttonText;

  const AnswerButton(
      {Key? key, required this.onPress, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(buttonText),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    );
  }
}
