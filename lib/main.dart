import 'package:covid_app/provider/data.dart';
import 'package:covid_app/ui/provinsi_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid App',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: ChangeNotifierProvider(
        create: (context) => Data(),
        child: const ProvinsiScreen(),
      ),
    );
  }
}
