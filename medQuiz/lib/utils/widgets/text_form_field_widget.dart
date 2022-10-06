import 'package:flutter/material.dart';

import '../theme/medQuiz_colors.dart';

// ignore: must_be_immutable
class TextformfieldWidget extends StatelessWidget {
  TextformfieldWidget({
    Key? key,
    this.controler,
    this.validator,
    required this.hinttext,
    this.width,
    this.prefixicon,
    // this.hintStyle,
  }) : super(key: key);
  final String hinttext;
  // final TextStyle? hintStyle;
  final double? width;
  final Widget? prefixicon;
  final TextEditingController? controler;
  String? Function(String?)? validator;
// final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: TextFormField(
        validator: validator,
        controller: controler,
        decoration: InputDecoration(
          prefixIcon: prefixicon,
          contentPadding: const EdgeInsets.all(8),
          hintText: hinttext,
          hintStyle: const TextStyle(
              color: MedQuizColors.color30gray,
              fontWeight: FontWeight.bold,
              fontSize: 14),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0)),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
