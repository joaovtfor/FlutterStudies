import 'package:drawer/app_controller.dart';
import 'package:drawer/home_page.dart';
import 'package:drawer/login_page.dart';
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
                    ? Brightness.dark
                    : Brightness.light),
            routes: {
              '/': (context) => const LoginPage(),
              '/home': (context) => const HomePage(),
            },
          );
        });
  }
}
