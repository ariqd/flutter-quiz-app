import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        // Opacity(
        //   opacity: 0.6,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton.icon(
          onPressed: () => {startQuiz()},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const StyledText('Start quiz'),
        ),
      ],
    );
  }
}
