import 'package:flutter/material.dart';
import 'package:petshionista/presentation/core/constants.dart';
import 'package:petshionista/presentation/features/home/views/home_form.dart';

void main() {
  runApp(Petshionistar());
}

class Petshionistar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petshionista',
      theme: customThemeData,
      home: HomeForm(),
    );
  }
}
