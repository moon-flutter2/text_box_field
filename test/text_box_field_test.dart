import 'package:flutter_test/flutter_test.dart';
import 'package:text_box_field/text_box_field.dart';
import 'package:text_box_field/text_box_field_platform_interface.dart';
import 'package:text_box_field/text_box_field_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTextBoxFieldPlatform
    with MockPlatformInterfaceMixin
    implements TextBoxFieldPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TextBoxFieldPlatform initialPlatform = TextBoxFieldPlatform.instance;

  test('$MethodChannelTextBoxField is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTextBoxField>());
  });

  test('getPlatformVersion', () async {
    TextBoxField textBoxFieldPlugin = TextBoxField();
    MockTextBoxFieldPlatform fakePlatform = MockTextBoxFieldPlatform();
    TextBoxFieldPlatform.instance = fakePlatform;

    expect(await textBoxFieldPlugin.getPlatformVersion(), '42');
  });
}
