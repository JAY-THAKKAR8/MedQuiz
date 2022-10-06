// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_style.dart';

// ignore: must_be_immutable
class CommonButtonWidget extends StatelessWidget {
  CommonButtonWidget(
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: size.width,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: buttonColor,
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(buttonText, style: AppTextStyles.appbarTextStyle),
        ),
      ),
    );
  }
}
