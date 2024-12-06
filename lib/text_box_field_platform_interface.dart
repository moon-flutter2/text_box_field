import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:text_box_field/common_text_field.dart';

import 'text_box_field_method_channel.dart';

abstract class TextBoxFieldPlatform extends PlatformInterface {
  /// Constructs a TextBoxFieldPlatform.
  TextBoxFieldPlatform() : super(token: _token);

  static final Object _token = Object();

  static TextBoxFieldPlatform _instance = MethodChannelTextBoxField();

  /// The default instance of [TextBoxFieldPlatform] to use.
  ///
  /// Defaults to [MethodChannelTextBoxField].
  static TextBoxFieldPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TextBoxFieldPlatform] when
  /// they register themselves.
  static set instance(TextBoxFieldPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  CommonTextField getTextField({required TextEditingController controller,required String labelText,required String hintText,TextStyle? textStyle}){
    return CommonTextField(controller: controller,hintText: hintText,textStyle: textStyle,);
  }
}
