import 'package:covid_app/models/data_covid.dart';
import 'package:covid_app/ui/detail_provinsi.dart';
import 'package:flutter/material.dart';

class ProvinsiItem extends StatelessWidget {
  final DataCovid dataProvinsi;
  const ProvinsiItem({Key? key, required this.dataProvinsi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProvinsi(
              provinsi: dataProvinsi,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataProvinsi.key!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Jumlah Kasus'),
            Text(
              dataProvinsi.jumlah_kasus.toString(),
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
