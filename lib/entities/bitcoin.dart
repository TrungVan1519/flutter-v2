// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currencies = [
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

const List<String> cryptos = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-HERE';

class Bitcoin {
  Future<dynamic> getBitcoin({String? currency}) async {
    http.Response response = await http
        .get(Uri.parse('$coinAPIURL/BTC/${currency ?? 'USD'}?apikey=$apiKey'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
