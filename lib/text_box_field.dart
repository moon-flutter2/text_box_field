
import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:text_box_field/common_text_field.dart';

import 'text_box_field_platform_interface.dart';

class TextBoxField {
  CommonTextField getTextField({required TextEditingController controller,required String labelText,required String hintText,TextStyle? textStyle}) {
    return TextBoxFieldPlatform.instance.getTextField(controller: controller, labelText: labelText, hintText: hintText, textStyle: textStyle);
  }

  Container getContainer(){
    return Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    );
  }


  TextFormField textField({TextEditingController? controller,String? hintText,String? labelText}){
    return TextFormField(controller: controller,decoration: InputDecoration(hintText: hintText,labelText: labelText),);
  }
  
  Container containerDesign({Color? color}){
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }

}
