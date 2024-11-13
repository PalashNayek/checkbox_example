import 'package:checkbox_example/di/setup_locator.dart';
import 'package:checkbox_example/screens/checkbox_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxScreen(),
    );
  }
}
