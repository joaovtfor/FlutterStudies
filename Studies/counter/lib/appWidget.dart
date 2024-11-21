import 'package:flutter/material.dart';

import 'homePage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), theme: ThemeData.light());
  }
}
