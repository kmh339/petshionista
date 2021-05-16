import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshionista/app/domain/usecases/auth_controller.dart';
import 'package:petshionista/app/presentation/core/initial_binding.dart';
import 'package:petshionista/app/presentation/pages/home/views/home_view.dart';
import 'package:petshionista/app/presentation/core/constants.dart';
import 'package:petshionista/app/presentation/pages/profile/profile_binding.dart';
import 'package:petshionista/app/presentation/pages/profile/views/profile_view.dart';
import 'package:petshionista/app/presentation/pages/splash/splash_view.dart';

import 'app/presentation/pages/login/views/login_view.dart';

void main() {
  runApp(
    Petshionista(),
  );
}

class Petshionista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Petshionista',
      theme: customThemeData,
      initialBinding: InitialBinding(),
      home: GetBuilder<AuthController>(
        builder: (AuthController _controller) {
          switch (_controller.authStatus) {
            case AuthStatus.idle:
              return SplashView();
            case AuthStatus.authenticated:
              return HomeView();
            case AuthStatus.unauthenticated:
              return LoginView();
          }
        },
      ),
    );
  }
}
