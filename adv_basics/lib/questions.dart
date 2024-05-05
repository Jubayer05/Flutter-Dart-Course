import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String onSelectAnswer) {
    widget.onSelectAnswer('...');

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = quiz_questions[currentQuestionIndex];

    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                currentQuestion.question,
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  color: Color.fromARGB(195, 255, 255, 255),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswersButton(
                  question: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
