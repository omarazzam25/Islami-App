import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';

class AzkarModel {
  AzkarModel({
    this.category,
    this.count,
    this.description,
    this.reference,
    this.content,});

  AzkarModel.fromJson(dynamic json) {
    category = json['category'];
    count = json['count'];
    description = json['description'];
    reference = json['reference'];
    content = json['content'];
  }

  String? category;
  String? count;
  String? description;
  String? reference;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = category;
    map['count'] = count;
    map['description'] = description;
    map['reference'] = reference;
    map['content'] = content;
    return map;
  }

  static Future<List<AzkarModel>> loadAzkarModel(String azkarType) async {
    var response = await rootBundle.loadString('assets/files/azkar/azkar.json');

    var jsonContent = jsonDecode(response);
    if (jsonContent[azkarType] is List){

      return (jsonContent[azkarType] as List).map((e) => AzkarModel.fromJson(e),).toList();
    }else {
      return [];
    }
  }

}