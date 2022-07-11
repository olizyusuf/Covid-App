import 'package:covid_app/models/data_covid.dart';
import 'package:covid_app/widget/informasi.dart';
import 'package:flutter/material.dart';

class DetailProvinsi extends StatelessWidget {
  final DataCovid provinsi;
  const DetailProvinsi({Key? key, required this.provinsi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          provinsi.key!,
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text('Provinsi'),
            Text(
              provinsi.key!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Informasi(
              data1: provinsi.jumlah_kasus.toString(),
              title1: 'Jumlah Kasus',
              color1: Colors.red,
              data2: provinsi.jumlah_sembuh.toString(),
              title2: 'Jumlah Sembuh',
              color2: Colors.green,
            ),
            Informasi(
              data1: provinsi.jumlah_dirawat.toString(),
              title1: 'Jumlah Dirawat',
              color1: Colors.blue,
              data2: provinsi.jumlah_meninggal.toString(),
              title2: 'Jumlah Meninggal',
              color2: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Kelompok Umur",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: provinsi.kelompok_umur!.map((data) {
                return Card(
                  child: ListTile(
                    title: Text(
                      '${data['key']} Tahun',
                    ),
                    trailing: Text(
                      data['doc_count'].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
