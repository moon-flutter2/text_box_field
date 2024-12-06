import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:text_box_field/common_text_field.dart';

import 'text_box_field_platform_interface.dart';

class TextBoxField {
  CommonTextField getTextField(
      {required TextEditingController controller,
      required String labelText,
      required String hintText,
      TextStyle? textStyle}) {
    return TextBoxFieldPlatform.instance.getTextField(
        controller: controller,
        labelText: labelText,
        hintText: hintText,
        textStyle: textStyle);
  }

  Container getContainer() {
    return Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.isPassword,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.validator,
    required this.onChanged,
    required this.onSubmitted,
    required this.fillColor,
    required this.filled,
    required this.borderRadius,
    required this.border,
    required this.focusedBorder,
    required this.errorBorder,
    required this.textStyle,
  });

  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String? p1)? validator;
  final Function(String p1)? onChanged;
  final Function(String p1)? onSubmitted;
  final Color? fillColor;
  final bool filled;
  final BorderRadius borderRadius;
  final OutlineInputBorder? border;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? errorBorder;
  final TextStyle? textStyle;

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
