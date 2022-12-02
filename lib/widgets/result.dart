
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Hasil extends StatelessWidget {
  const Hasil({
    Key? key,
    required this.kelvin,
    required this.reaumur,
  }) : super(key: key);

  final double kelvin;
  final double reaumur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "Suhu Dalam Kelvin",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$kelvin",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Suhu Dalam Reaumur",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$reaumur",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}