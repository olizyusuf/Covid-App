import 'package:flutter/material.dart';

class Informasi extends StatelessWidget {
  final String data1;
  final String data2;
  final String title1;
  final String title2;
  final Color color1;
  final Color color2;

  const Informasi({
    Key? key,
    required this.data1,
    required this.data2,
    required this.title1,
    required this.title2,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: color1,
                    ),
                  ),
                  Text(
                    title1,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: color1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    data2,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: color2,
                    ),
                  ),
                  Text(
                    title2,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: color2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
