import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImageNo = randomizer.nextInt(6) + 1;

  void handleBtnClick() {
    print(activeImageNo);
    setState(() {
      activeImageNo = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeImageNo.png',
          width: 150,
        ),
        const SizedBox(height: 50),
        FilledButton(
          onPressed: handleBtnClick,
          style: FilledButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 123, 105, 224),
            // primary: Colors.blue, // Background color
            // onPrimary: Colors.white, // Text color
            padding: const EdgeInsets.symmetric(
                horizontal: 50, vertical: 24), // Button padding
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100), // Button border radius
            ),
          ),
          child: const Text('Roll Dice',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 240, 231, 197))),
        )
      ],
    );
  }
}
