import 'dart:convert' as JSON;

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import './exchange_data.dart';

class ExchangeList extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExchangeListState();
  }
}

class ExchangeListState extends State<ExchangeList>{
  List<ExhData> eData = [
   // ExhData(currency: 'USD', saleRate: 5.12, purchaseRate: 6.02),
   // ExhData(currency: 'EUR', saleRate: 10.01, purchaseRate: 11.02)
  ];

    _loadEC() async {

      final response = await http.get('https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5');
      if (response.statusCode == 200) {
        print(response.body);

        //var allData =(json.decode(response.body)) as Map)['eData'] as Map<String, dynamic>;

        var allData = [
          {"ccy":"USD","base_ccy":"UAH","buy":"23.90000","sale":"25.00000"},
          {"ccy":"EUR","base_ccy":"UAH","buy":"26.50000","sale":"27.90000"},
          {"ccy":"RUR","base_ccy":"UAH","buy":"0.35700","sale":"0.40200"},
          {"ccy":"BTC","base_ccy":"USD","buy":"6950.0718","sale":"7681.6583"}
          ];
        var ecDataList; //= List<ExhData>();
        allData.forEach((val){
          var record = ExhData(ccy: val['ccy'],base_ccy: val['base_ccy'], buy: val['buy'], sale: val['sale']);
          ecDataList.add(record);
          print(val);
        });
        //print(ecDataList);



      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome Exchenger'),
        ),
        body: Container(
          child: ListView(
            children: _buildList(),
          ),
        ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () => _loadEC(),
      ),
    );



  }
  List<Widget> _buildList(){
    return eData.map((ExhData f) => ListTile(
      title: Text(f.ccy),
      subtitle: Text(f.ccy),
      leading: CircleAvatar(child: Text(f.ccy),),
      trailing: Text('${f.buy.toString()}' + ' ' + '${f.sale.toString()}'),
    )).toList();
  }


}