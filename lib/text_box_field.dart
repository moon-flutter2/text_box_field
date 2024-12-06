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

  TextField textField(
    String hintText,
    TextEditingController? controller,
    TextInputType keyboardType,
    bool isPassword,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? Function(String?)? validator,
    Function(String)? onChanged,
    Function(String)? onSubmitted,
    Color? fillColor,
    bool filled,
    BorderRadius borderRadius,
    OutlineInputBorder? border,
    OutlineInputBorder? focusedBorder,
    OutlineInputBorder? errorBorder,
    TextStyle? textStyle,
  ) {
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
