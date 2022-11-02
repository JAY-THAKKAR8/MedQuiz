import 'package:flutter/material.dart';
import 'package:medquiz/utils/theme/medQuiz_colors.dart';

class AppTextStyles {
  static const appbarTextStyle = TextStyle(
    fontSize: 20,
    color: MedQuizColors.whiteColor,
  );

  static const normalTextTextStyle = TextStyle(
      fontSize: 18,
      color: MedQuizColors.blackColor,
      fontWeight: FontWeight.w400);

  static const subtextTextStyle = TextStyle(
    fontSize: 16,
    color: MedQuizColors.blackColor,
  );

  static const headingTextStyle = TextStyle(
      fontSize: 20,
      color: MedQuizColors.blackColor,
      fontWeight: FontWeight.w500);
  static const GrayTextstyle = TextStyle(
      fontSize: 20,
      color: MedQuizColors.color50gray,
      fontWeight: FontWeight.w500);
  static const GrayNormalTextstyle = TextStyle(
      fontSize: 18,
      color: MedQuizColors.color50gray,
      fontWeight: FontWeight.w500);
}
