import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  const Result({Key? key, required this.finalScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quiz answered, thanks!\nYour score $finalScore',
        textAlign: TextAlign.center,
      ),
    );
  }
}
