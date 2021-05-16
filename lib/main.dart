import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:petshionista/app/data/repositories/auth_repository_impl.dart';
import 'package:petshionista/app/presentation/pages/splash/splash_view.dart';
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
      home: Scaffold(body: Container()),
    );
  }
}
