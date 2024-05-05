import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(renderScreen);
  //   super.initState();
  // }

  // NOTE: Or do this procedure
  var activeScreen = 'start_screen';

  void renderScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == quiz_questions.length) {
      setState(() {
        activeScreen = 'start_screen';
        selectedAnswer = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(renderScreen);

    if (activeScreen == 'question_screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 70, 0, 142),
                  Color.fromARGB(255, 96, 0, 161)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            // NOTE: Using ternary expression
            child: screenWidget),
        // NOTE: Using if else expression
      ),
    );
  }
}
