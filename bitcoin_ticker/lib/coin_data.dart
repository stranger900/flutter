import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'USD',
  'JPY',
  'CNY',
  'SGD',
  'HKD',
  'CAD',
  'NZD',
  'AUD',
  'CLP',
  'GBP',
  'DKK',
  'SEK',
  'ISK',
  'CHF',
  'BRL',
  'EUR',
  'RUB',
  'PLN',
  'THB',
  'KRW',
  'TWD',

];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {

}
  //url = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTCUSD';
  var url = 'https://blockchain.info/ticker';

Future getCoinData(String  selectedCurrency) async{
  http.Response response = await http.get(url);
  //print(response.body);
  if(response.statusCode == 200) {
    String data = response.body;
    print(data);
    print('*************************************************************************');
    //return jsonDecode(data)[USD][last];
      var id = jsonDecode(data)[selectedCurrency]['last'];
      print(id);
//      var temp = jsonDecode(data)['main']['temp'];
//      print(temp);
//      var name = jsonDecode(data)['name'];
//      print(name);
  }else{
    print(response.statusCode);
  }

}

