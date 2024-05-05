import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersButton extends StatelessWidget {
  final VoidCallback onTap;
  final String question;

  const AnswersButton({super.key, required this.onTap, required this.question});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(0, 46, 16, 77),
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
          child: Text(question,
              textAlign: TextAlign.center,

              // style: Google const TextStyle(
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
