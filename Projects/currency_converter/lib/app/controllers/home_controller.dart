import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final TextEditingController toText;
  final TextEditingController fromText;

  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double result = 0;

    switch (fromCurrency.name) {
      case 'Real':
        result = value * toCurrency.real;
        break;
      case 'Dollar':
        result = value * toCurrency.dollar;
        break;
      case 'Euro':
        result = value * toCurrency.euro;
        break;
      case 'Bitcoin':
        result = value * toCurrency.bitcoin;
        break;
    }

    fromText.text = result.toStringAsFixed(2);
  }
}
