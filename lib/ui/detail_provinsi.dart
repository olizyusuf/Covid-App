import 'package:covid_app/models/data_covid.dart';
import 'package:flutter/material.dart';

class DetailProvinsi extends StatelessWidget {
  DataCovid provinsi;
  DetailProvinsi({Key? key, required this.provinsi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(provinsi.key!),
      ),
    );
  }
}
