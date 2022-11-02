import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_style.dart';

class SubmitButtonWidget extends StatelessWidget {
  SubmitButtonWidget(
      {Key? key,
      this.onTap,
      required this.buttonText,
      required this.buttonColor})
      : super(key: key);
  final VoidCallback? onTap;
  String buttonText;
  Color buttonColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: Text(buttonText, style: AppTextStyles.appbarTextStyle),
      ),
    );
  }
}
