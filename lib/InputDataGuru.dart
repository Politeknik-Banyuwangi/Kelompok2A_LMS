import 'package:flutter/material.dart';

class InputDataGuru extends StatefulWidget {
  const InputDataGuru({super.key});

  @override
  State<InputDataGuru> createState() => _InputDataGuruState();
}

class _InputDataGuruState extends State<InputDataGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Input Data Guru"),
      ),
    );
  }
}
