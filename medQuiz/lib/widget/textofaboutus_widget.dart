import 'package:flutter/material.dart';
import 'package:medquiz/widget/text_widget.dart';

class AbouttextWidget extends StatelessWidget {
  const AbouttextWidget(
      {super.key, required this.numbertext, required this.text});
  final String numbertext;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(text: numbertext, textcolor: Colors.white, fontsize: 35),
        const SizedBox(
          height: 5,
        ),
        TextWidget(
          textAlign: TextAlign.center,
          text: text,
          maxLines: 2,
          textcolor: Colors.white,
          fontsize: 18,
        )
      ],
    );
  }
}
