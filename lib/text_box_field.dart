
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
  GestureDetector gestureDetectorDemo({VoidCallback? onTap,Color? color,IconData? icon}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        child: Icon(icon),
      ),
    );
  }

  Card cardDesign({String? imageUrl,
  String? title,
  String? description}){
    return Card(
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Icon(Icons.account_circle,color: Colors.red,size: 20,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description!),
          ),
        ],
      ),
    );
  }

}
