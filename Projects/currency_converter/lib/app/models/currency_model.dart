import 'package:http/http.dart' as http;
import 'package:unixtime/unixtime.dart';
import 'dart:convert';

class CurrencyModel {
  final String name;
  final double real;
  final double dollar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.dollar,
      required this.euro,
      required this.bitcoin});

  Future fetch({name, rates}) async {
    var url = Uri.parse('https://api.exchangerate-api.com/v4/latest/$name');
    final response = await http
        .get(url, headers: {'Content-Type': 'application/json; charset=UTF-8'});

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final ratesData = data['rates'];
      final currencyBase = data['base'];
      currencyBase.toString();
      final currencyDate = data['date'];
      currencyDate.toString();
      final int timeLastUpdated = data['time_last_updated'];
      timeLastUpdated.toUnixTime();

      return ratesData;
    } else {
      throw Exception('Failed to load data');
    }
  }

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1, dollar: 0.18, euro: 0.15, bitcoin: 0.0000017),
      CurrencyModel(
          name: 'Dollar', real: 5.85, dollar: 1, euro: 0.95, bitcoin: 0.000010),
      CurrencyModel(
          name: 'Euro', real: 6.13, dollar: 1.05, euro: 1, bitcoin: 0.000011),
      CurrencyModel(
          name: 'Bitcoin',
          real: 573503.87,
          dollar: 98511.95,
          euro: 93951.24,
          bitcoin: 1),
    ];
  }
}
