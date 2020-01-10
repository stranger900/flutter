//import 'package:json_annotation/json_annotation.dart';
//import 'package:flutter/material.dart';

class ExhData {
  String ccy;
  String base_ccy;
  String buy;
  String sale;

  ExhData({this.ccy, this.base_ccy, this.buy, this.sale});
}
/*
class ExhData {
  final String ccy;
  final String base_ccy;
  final double buy;
  final double sale;

  ExhData({this.ccy, this.base_ccy, this.buy, this.sale});

  factory ExhData.fromJson(Map<String, dynamic> json) => ExhDataFromJson(json);
  Map<String, dynamic> toJson() => ExhDataToJson(this);
}

ExhData ExhDataFromJson(Map<String, dynamic> json) {
  return ExhData(
    ccy: json['ccy'] as String,
    base_ccy: json['base_ccy'] as String,
    buy: json['buy'],
    sale: json['sale'],
  );
}

Map<String, dynamic> ExhDataToJson(ExhData instance) => <String, dynamic>{
  'ccy': instance.ccy,
  'base_ccy': instance.base_ccy,
  'buy': instance.buy,
  'sale': instance.sale
};

 */