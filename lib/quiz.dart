import 'package:flutter/material.dart';
import 'package:flutter_basics/questions_screen.dart';
import 'package:flutter_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff8500ff),
        useMaterial3: true,
      ),
      home: Container(
        decoration: const BoxDecoration(),
        child: activeScreen,
      ),
    );
  }
}
