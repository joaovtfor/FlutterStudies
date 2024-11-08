import 'package:render_types/appController.dart';
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
      body: Container(
          height: 200,
          width: 200,
          color: Colors.blue[900],
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.white,
            ),
          )),
    );
  }
}
