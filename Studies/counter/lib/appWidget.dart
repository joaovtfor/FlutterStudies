import 'package:flutter/material.dart';

import 'homePage.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), theme: ThemeData.light());
  }
}
