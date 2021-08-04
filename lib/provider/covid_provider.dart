import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:corona/model/covid.dart';
import 'package:http/http.dart' as http;

class CovidProvider extends ChangeNotifier {
  getCovidData() async {
    var result = await http.get(
      Uri.parse('https://api.kawalcorona.com/indonesia/'),
    );

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Covid> covid = data.map((item) => Covid.fromJson(item)).toList();
      return covid;
    } else {
      return <Covid>[];
    }
  }
}
