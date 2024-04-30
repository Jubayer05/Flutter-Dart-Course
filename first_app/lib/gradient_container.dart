import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          color1,
          color2,
        ],
      )),
      child: const Center(
        child: Padding(padding: const EdgeInsets.all(24.0), child: DiceRoller()
            // child: Image.src('/assets/dice-5.png'),
            ),
      ),
    );
  }
}

// class CustomGradient extends StatelessWidget {
//   const CustomGradient({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors,
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight),
//       ),
//       child: const Center(
//         child: Padding(
//           padding: EdgeInsets.all(24.0),
//           child: CustomText("Hi Jubayer Let's try to do something new"),
//         ),
//       ),
//     );
//   }
// }
