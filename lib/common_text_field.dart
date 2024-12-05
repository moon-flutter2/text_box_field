import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Color? fillColor;
  final bool filled;
  final BorderRadius borderRadius;
  final OutlineInputBorder? border;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? errorBorder;
  final TextStyle? textStyle;

  const CommonTextField({
    Key? key,
    this.hintText = '',
    this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.fillColor,
    this.filled = true,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.border,
    this.focusedBorder,
    this.errorBorder,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle,
        filled: filled,
        fillColor: fillColor ?? Colors.grey[200],
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: border ??
            OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(color: Colors.grey[400]!),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: const BorderSide(color: Colors.blue),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: const BorderSide(color: Colors.red),
            ),
      ),
    );
  }
}
