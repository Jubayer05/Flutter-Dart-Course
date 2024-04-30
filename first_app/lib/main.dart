import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomGradient(const Color.fromARGB(255, 3, 45, 78),
              const Color.fromARGB(255, 9, 72, 120)),
        ),
      ),
    ),
  );
}


// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: CustomGradient(
//           colors: [
//             Color.fromARGB(31, 8, 98, 209),
//             Color.fromARGB(255, 28, 22, 146)
//           ],
//         ),
//       ),
//     ),
//   );
// }
