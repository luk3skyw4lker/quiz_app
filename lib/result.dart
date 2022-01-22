import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int finalScore;

  const Result({Key? key, required this.finalScore, required this.resetQuiz})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz finished, thanks!\nYour score is $finalScore',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Reset Quiz'),
          )
        ],
      ),
    );
  }
}
