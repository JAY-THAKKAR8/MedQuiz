import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.textAlign,
  });
  final String text;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: const TextStyle(
        color: MedQuizColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
