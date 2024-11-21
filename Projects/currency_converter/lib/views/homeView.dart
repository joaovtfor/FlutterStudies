// ignore: file_names
import 'package:currency_converter/controllers/darkModeController.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: DarkModeController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: DarkModeController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            // routes: {
            //   '/': (context) => const LoginPage(),
            // },
          );
        });
  }
}
