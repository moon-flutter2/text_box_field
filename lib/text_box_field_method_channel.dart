import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'text_box_field_platform_interface.dart';

/// An implementation of [TextBoxFieldPlatform] that uses method channels.
class MethodChannelTextBoxField extends TextBoxFieldPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('text_box_field');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
