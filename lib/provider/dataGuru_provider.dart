import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/DataGuru_model.dart';
import 'package:flutter_application_1/pages/DataGuru.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataGuruProvider extends ChangeNotifier {
  List<DataGuruModel> _data = [];
  List<DataGuruModel> get dataDataGuru => _data;
  Future<List<DataGuruModel>> getDataGuruModel() async {
    final url = 'https://dummy.restapiexample.com/api/v1/employees';
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final result =
          json.decode(response.body)['data'].cast<Map<String, dynamic>>();
      _data = result
          .map<DataGuruModel>((json) => DataGuruModel.formJson(json))
          .toList();
      return _data;
    } else {
      throw Exception();
    }
  }
}
