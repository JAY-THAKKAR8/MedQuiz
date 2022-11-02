import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final int? maxLines;
  final double? fontsize;
  final FontStyle? fontStyle;
  final Color? textcolor;
  final FontWeight? fontweight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  const TextWidget(
      {Key? key,
      required this.text,
      this.fontsize,
      this.maxLines,
      this.fontStyle,
      this.textcolor,
      this.fontweight,
      this.textAlign,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        color: textcolor ?? AppColor.textblack,
        fontSize: fontsize,
        fontStyle: fontStyle,
        overflow: overflow ?? TextOverflow.ellipsis,
        fontWeight: fontweight ?? FontWeight.bold,
      ),
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}
