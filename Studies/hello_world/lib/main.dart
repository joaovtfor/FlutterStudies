// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

main() {
  runApp(const Center(
    child: Text(
      'Hello, Flutter!',
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 32),
    ),
  ));
  print("Hello, Flutter!");
}
