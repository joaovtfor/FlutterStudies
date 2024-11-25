import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Convert from real to dollar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Convert from dollar to real', () {
    toText.text = '2.0';
    homeController.toCurrency = homeController.currencies[1];
    homeController.fromCurrency = homeController.currencies[0];
    homeController.convert();
    expect(fromText.text, '11.70');
  });
}
