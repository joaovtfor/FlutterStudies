// ignore: file_names
import 'package:routes/app_controller.dart';
import 'package:routes/home_page.dart';
import 'package:routes/login_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.light
                    : Brightness.dark),
            routes: {
              '/': (context) => const LoginPage(),
              '/home': (context) => const HomePage(),
            },
          );
        });
  }
}
