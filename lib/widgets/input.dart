import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class inputSuhu extends StatelessWidget {
  const inputSuhu({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final TextEditingController text1;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: text1,
        decoration: InputDecoration(hintText: "Masukkan Suhu"),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ]);
  }
}