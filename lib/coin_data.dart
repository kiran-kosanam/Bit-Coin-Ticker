import 'package:bitcoin_ticker/networking.dart';
import 'package:flutter/cupertino.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  dynamic coinData(String currency) async {
    print(currency);
    NetworkHelper networkHelper = NetworkHelper();
    List<dynamic> data = [];
    for (String format in cryptoList) {
      var d = await networkHelper.getData(currency, format);
      print(d);
      data.add(d);
    }
    List<dynamic> rates = [];
    for (int i = 0; i < data.length; i++) {
      print(data[i]['rate'].toString());
      rates.add(data[i]['rate'].toStringAsFixed(5));
    }

    return rates;
  }
}
