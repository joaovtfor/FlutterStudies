import 'package:drawer/appController.dart';
import 'package:drawer/homePage.dart';
import 'package:drawer/loginPage.dart';
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
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
