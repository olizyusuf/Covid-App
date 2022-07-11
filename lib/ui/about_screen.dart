import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            Text(
                'Aplikasi ini dibuat untuk memonitor perkembangan jumlah kasus Covid19 di Indonesia, diharapkan dengan adanya aplikasi ini bisa memantau perkembangan jumlah kasusu dan menjadikan kita lebih waspada terhadap kasus Covid19 di Indonesia.'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Menggunakan API yang bersumber dari Pemerintah Indonesia di Covid-19.go.id',
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Covid App by github.com/olizyusuf @ 2022',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
