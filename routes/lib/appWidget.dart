import 'package:routes/appController.dart';
import 'package:routes/login_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
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
              home: LoginPage());
        });
  }
}
