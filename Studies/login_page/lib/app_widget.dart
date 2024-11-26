import 'package:login_page/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

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
              home: const LoginPage());
        });
  }
}
