
import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:text_box_field/common_text_field.dart';

import 'text_box_field_platform_interface.dart';

class TextBoxField {
  CommonTextField getPlatformVersion({required TextEditingController controller,required String labelText,required String hintText}) {
    return CommonTextField();
  }
}
