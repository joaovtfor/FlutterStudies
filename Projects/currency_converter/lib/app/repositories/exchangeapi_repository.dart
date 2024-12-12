import 'package:currency_converter/app/models/exchangeapi_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExchangeApiRepository {
  ExchangeApiModel exchangeApi;

  ExchangeApiRepository(this.exchangeApi);

  Future<ExchangeApiModel> fetchExchangeAPI({baseCurrency}) async {
    final url = Uri.parse('https://open.er-api.com/v6/latest/$baseCurrency');
    var response = await http
        .get(url, headers: {'Content-Type': 'application/json; charset=UTF-8'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final dataValues = ExchangeApiModel.fromJson(data);
      return dataValues;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
