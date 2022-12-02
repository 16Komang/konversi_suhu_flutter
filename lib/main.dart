import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konversi_suhu_flutter/widgets/convert.dart';
import 'package:konversi_suhu_flutter/widgets/input.dart';
import 'package:konversi_suhu_flutter/widgets/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController text1 = TextEditingController();
  double kelvin = 0, reaumur = 0, input = 0;

  konversi() {
    setState(() {
      input = double.parse(text1.text);
      kelvin = input + 273;
      reaumur = input * 4 / 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Konversi Suhu')),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              inputSuhu(text1: text1),
              Hasil(kelvin: kelvin, reaumur: reaumur),
              konvertButton(text1: text1, konversi: konversi)
            ],
          ),
        ),
      ),
    );
  }
}