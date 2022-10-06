import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.buttonColor,
    this.textcolor,
    this.padding,
  }) : super(key: key);
  final String text;
  final Color? buttonColor;
  final Color? textcolor;
  final Function() onTap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: buttonColor ?? MedQuizColors.primaryColor),
          child: Text(
            text,
            style: TextStyle(
                color: textcolor ?? Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
