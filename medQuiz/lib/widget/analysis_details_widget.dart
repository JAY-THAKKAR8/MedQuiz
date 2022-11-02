import 'package:flutter/material.dart';
import 'package:medquiz/utility/app_colors.dart';

class AnalysisDetailsWidget extends StatelessWidget {
  const AnalysisDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text(
              '1.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
              'Introduction to Maths',
              style: TextStyle(
                  color: AppColor.textblack,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  Text(
                    '90.70%',
                    style: TextStyle(
                        color: AppColor.lightgreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      '16/19',
                      style: TextStyle(
                          color: AppColor.textgrey,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
      ],
    );
  }
}
