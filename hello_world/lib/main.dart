import 'package:flutter/material.dart';

main() {
  runApp(Container(
    child: const Center(
      child: Text(
        'Hello, Flutter!',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 32),
      ),
    ),
  ));
  print("Hello, Flutter!");
}
