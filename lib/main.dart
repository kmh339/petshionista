import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshionista/app/presentation/pages/home/views/home_view.dart';
import 'package:petshionista/app/presentation/core/constants.dart';

void main() {
  runApp(
    Petshionistar(),
  );
}

class Petshionistar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Petshionista',
      theme: customThemeData,
      home: HomeView(),
    );
  }
}
