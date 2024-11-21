import 'package:dark_theme/appController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'DarkTheme',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Switch(
              value: AppController.instance.isDarkTheme,
              onChanged: (value) {
                AppController.instance.changeTheme();
              })),
    );
  }
}
