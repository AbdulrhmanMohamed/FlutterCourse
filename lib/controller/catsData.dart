import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:networking/model/jsonModel.dart';

class CatsData {
  Future<List<Cats>> fetchData() async {
    try {
      var data = await http.get(
          Uri.parse('https://62d4154fcd960e45d452f790.mockapi.io/api/article'));

  var dataList=json.decode(data.body);
      return (dataList  as List).map((ele)=>Cats.json(ele)).toList();
    } catch (e) {
      throw Exception(' Date is Not Parsed Corrrectly');
    }
  }
}
