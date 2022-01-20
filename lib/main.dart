import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  var questionIndex = 0;

  void pressButton() {
    setState(() {
      if (questionIndex == questions.length - 1) {
        questionIndex = 0;
      } else {
        questionIndex = questionIndex + 1;
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
            Text(questions[questionIndex]),
            ElevatedButton(
                onPressed: pressButton, child: const Text('Answer 1!')),
            ElevatedButton(
                onPressed: pressButton, child: const Text('Answer 2!')),
            ElevatedButton(
                onPressed: pressButton, child: const Text('Answer 3!')),
          ],
        ),
      ),
    );
  }
}
