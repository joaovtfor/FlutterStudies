import 'package:flutter/material.dart';

class DarkModeController extends ChangeNotifier {
  static DarkModeController instance = DarkModeController();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
