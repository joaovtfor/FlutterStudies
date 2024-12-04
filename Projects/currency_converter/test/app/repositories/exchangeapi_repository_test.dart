import 'package:currency_converter/app/repositories/exchangeapi_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final repository = ExchangeapiRepository();
  test('Must show an API repo currency type', () async {
    final obj = await repository.fetchExchangeAPI(baseCurrency: 'USD');
    expect(obj.baseCode, 'USD');
  });
}
