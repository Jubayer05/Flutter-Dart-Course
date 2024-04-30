import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.textProps, {super.key});

  final String textProps;

  @override
  Widget build(context) {
    return Text(
      textProps,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}
