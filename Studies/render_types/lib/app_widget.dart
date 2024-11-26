import 'package:render_types/app_controller.dart';
import 'package:render_types/home_page.dart';
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
              home: const HomePage());
        });
  }
}
