import 'package:flutter/material.dart';

import 'controllers/darkModeController.dart';
import 'views/home-view.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: DarkModeController.instance.isDarkTheme
              ? Brightness.light
              : Brightness.dark),
    );
  }
}
