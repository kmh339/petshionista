import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshionista/app/domain/usecases/auth_controller.dart';
import 'package:petshionista/app/presentation/core/initial_binding.dart';
import 'package:petshionista/app/presentation/pages/home/views/home_view.dart';
import 'package:petshionista/app/presentation/core/constants.dart';

import 'app/presentation/pages/login/views/login_view.dart';

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
      initialBinding: InitialBinding(),
      home: GetBuilder<AuthController>(
        builder: (AuthController _controller) {
          if (_controller.isLoggedIn) {
            return HomeView();
          } else {
            return LoginView();
          }
        },
      ),
    );
  }
}
