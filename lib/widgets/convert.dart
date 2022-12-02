import 'package:flutter/material.dart';

class konvertButton extends StatelessWidget {
  konvertButton({
    Key? key,
    required this.text1,
    required this.konversi,
  }) : super(key: key);

  final TextEditingController text1;
  final Function konversi;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          konversi();
          text1.clear();
        },
        child: Text(
          "Konversi",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}