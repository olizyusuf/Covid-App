import 'package:covid_app/provider/data.dart';
import 'package:covid_app/ui/about_screen.dart';
import 'package:covid_app/widget/provinsi_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvinsiScreen extends StatelessWidget {
  const ProvinsiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Data dataCovid = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.info,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          'Covid App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: FutureBuilder(
        future: dataCovid.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 5 / 4,
                ),
                itemCount: dataCovid.dataProvinsi.length,
                itemBuilder: (context, index) {
                  final data = dataCovid.dataProvinsi[index];
                  return ProvinsiItem(dataProvinsi: data);
                },
              ),
            );
          }
        },
      ),
    );
  }
}
