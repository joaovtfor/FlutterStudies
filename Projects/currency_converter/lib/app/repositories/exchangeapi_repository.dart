import 'package:currency_converter/app/models/exchangeapi_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExchangeapiRepository {
  Future<ExchangeApiModel> fetchExchangeAPI({baseCurrency}) async {
    var url = Uri.parse('https://open.er-api.com/v6/latest/$baseCurrency');
    final response = await http
        .get(url, headers: {'Content-Type': 'application/json; charset=UTF-8'});

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final dataValues = ExchangeApiModel.fromJson(data);

      return dataValues;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
