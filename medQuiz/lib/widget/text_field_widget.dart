import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utility/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.suffix,
    this.suffixIcon,
    this.preffixIcon,
    this.customBorder,
    this.labelText,
    this.hintText,
    required this.controller,
    this.textAlign,
    this.prefixText,
    this.textInputAction,
    this.focusBorder,
    this.enableBorder,
    this.maxLines,
    this.hintDecoration,
    this.suffixText,
    this.hintStyle,
    this.keyboardType,
    this.labelStyle,
    this.focusNode,
    this.enabled,
    this.label,
    this.padding,
    this.onChanged,
    this.onTap,
    this.validator,
    this.obscureText,
    this.inputTextStyle,
    this.textColor,
    this.filled,
    this.fillColor,
    this.contentPadding,
    this.maxLength,
    this.inputFormatters,
    this.counterStyle,
    this.errorBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
  }) : super(key: key);

  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final InputBorder? customBorder;
  final String? labelText;
  final String? hintText;
  final TextEditingController controller;
  final TextAlign? textAlign;
  final String? prefixText;
  final TextInputAction? textInputAction;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;

  final int? maxLines;
  final TextDecoration? hintDecoration;
  final String? suffixText;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final TextStyle? labelStyle;
  final FocusNode? focusNode;
  final bool? enabled;
  final String? label;
  final EdgeInsets? padding;
  final Function(String)? onChanged;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextStyle? inputTextStyle;
  final Color? textColor;
  final bool? filled;
  final Color? fillColor;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? counterStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: TextFormField(
            inputFormatters: inputFormatters,
            maxLength: maxLength,
            textAlignVertical: TextAlignVertical.center,
            validator: validator,
            onChanged: onChanged,
            style: inputTextStyle,
            obscureText: obscureText ?? false,
            enabled: (onTap != null) ? false : enabled,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            textAlign: textAlign ?? TextAlign.start,
            controller: controller,
            maxLines: maxLines,
            focusNode: focusNode,
            decoration: InputDecoration(
              contentPadding: contentPadding,
              counterStyle: counterStyle,
              prefixIcon: preffixIcon,
              suffixIcon: suffixIcon,
              filled: filled ?? true,
              fillColor: fillColor ?? AppColor.lightgrey,
              label: label != null ? Text(label!) : null,
              labelText: labelText,
              labelStyle: labelStyle ??
                  TextStyle(
                      color: AppColor.textgrey,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
              focusedBorder: focusBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColor.trasperant)),
              enabledBorder: enableBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColor.trasperant)),
              errorBorder: errorBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColor.trasperant)),
              focusedErrorBorder: focusedErrorBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColor.trasperant)),
              disabledBorder: disabledBorder ??
                  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent)),
              prefixText: prefixText,
              border: customBorder,
              suffix: suffix,
              hintText: hintText,
              suffixText: suffixText,
              hintStyle: hintStyle ??
                  TextStyle(
                      color: AppColor.textgrey,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
            )),
      ),
    );
  }
}
