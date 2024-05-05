import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // const StartScreen(void Function() renderScreen, {super.key});
  const StartScreen(this.renderScreen, {super.key});

  final void Function() renderScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 200,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.1,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 200,
          //     height: 200,
          //   ),
          // ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(195, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton.icon(
            onPressed: renderScreen,
            style: OutlinedButton.styleFrom(
                shadowColor: const Color.fromARGB(41, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                // side: BorderSide.none,
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 1),
            icon: const Icon(Icons.rocket_launch_outlined),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
