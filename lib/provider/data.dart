import 'dart:convert';

import 'package:covid_app/models/data_covid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {
  List<DataCovid> dataProvinsi = [];

  Future<void> fetchData() async {
    String url = "https://data.covid19.go.id/public/api/prov.json";
    var response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      final List extractData = (jsonDecode(response.body))['list_data'];
      for (var data in extractData) {
        dataProvinsi.add(
          DataCovid(
            key: data['key'],
            doc_count: data['doc_count'].toString(),
            jumlah_kasus: data['jumlah_kasus'],
            jumlah_sembuh: data['jumlah_sembuh'],
            jumlah_dirawat: data['jumlah_dirawat'],
            jumlah_meninggal: data['jumlah_meninggal'],
            jenis_kelamin: data['jenis_kelamin'] as List,
            kelompok_umur: data['kelompok_umur'] as List,
            lokasi: data['lokasi'],
            penambahan: data['penambahan'],
          ),
        );
      }
    }
  }
}
