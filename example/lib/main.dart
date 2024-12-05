import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:text_box_field/text_box_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _textBoxFieldPlugin = TextBoxField();
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextBoxField().getPlatformVersion(
                controller: nameController,
                labelText: 'Name',
                hintText: 'Enter Your Name',  ),
          )),
    );
  }
}
