import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:currency_converter/app/models/exchangeapi_model.dart';
import 'package:currency_converter/app/repositories/exchangeapi_repository.dart';
import 'package:mocktail/mocktail.dart';

class ExchangeApiMock extends Mock implements ExchangeApiRepository {}

void main() {
  final exchangeApi = ExchangeApiMock();

  final repository = ExchangeApiRepository(exchangeApi as ExchangeApiModel);

  test('Must show an API repo currency type', () async {
    when(() => exchangeApi.fetchExchangeAPI(baseCurrency: 'USD'))
        .thenAnswer((_) async => ExchangeApiModel.fromJson(jsonDecode(json)));

    final obj = await repository.fetchExchangeAPI(baseCurrency: 'USD');
    print(obj.rates?.bRL);
    expect(obj.baseCode, 'USD');
  });
}

const json =
    '{"result":"success","time_last_update_utc":"Thu, 12 Dec 2024 00:02:32 +0000","time_next_update_utc":"Fri, 13 Dec 2024 00:22:22 +0000","base_code":"BRL","rates":{"USD":1,"BRL":6.3232,"BTN":84.885405,"EUR":0.952205,"GBP":0.784118,}}';
