import 'package:flutter/material.dart';
import 'package:medquiz/widget/text_widget.dart';

import '../utility/app_colors.dart';

class AboutustxtWidget extends StatelessWidget {
  const AboutustxtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, 1),
          color: Colors.black26,
          blurRadius: 4.0,
        ),
      ]),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: 'About us',
              fontsize: 16,
              textcolor: AppColor.textgrey,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'about us' * 50,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            )
          ]),
    );
  }
}
