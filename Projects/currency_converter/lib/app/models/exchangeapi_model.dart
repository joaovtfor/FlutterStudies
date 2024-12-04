class ExchangeApiModel {
  String? result;
  String? timeLastUpdateUtc;
  String? timeNextUpdateUtc;
  String? baseCode;
  Rates? rates;

  ExchangeApiModel(
      {this.result,
      this.timeLastUpdateUtc,
      this.timeNextUpdateUtc,
      this.baseCode,
      this.rates});

  ExchangeApiModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    timeLastUpdateUtc = json['time_last_update_utc'];
    timeNextUpdateUtc = json['time_next_update_utc'];
    baseCode = json['base_code'];
    rates = json['rates'] != null ? Rates.fromJson(json['rates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['result'] = result;
    data['time_last_update_utc'] = timeLastUpdateUtc;
    data['time_next_update_utc'] = timeNextUpdateUtc;
    data['base_code'] = baseCode;
    if (rates != null) {
      data['rates'] = rates!.toJson();
    }
    return data;
  }
}

class Rates {
  int? uSD;
  double? bRL;
  double? bTN;
  double? eUR;
  double? gBP;

  Rates({this.uSD, this.bRL, this.bTN, this.eUR, this.gBP});

  Rates.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
    bRL = json['BRL'];
    bTN = json['BTN'];
    eUR = json['EUR'];
    gBP = json['GBP'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['USD'] = uSD;
    data['BRL'] = bRL;
    data['BTN'] = bTN;
    data['EUR'] = eUR;
    data['GBP'] = gBP;
    return data;
  }
}
