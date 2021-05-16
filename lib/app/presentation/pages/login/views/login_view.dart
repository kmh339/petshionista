import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:petshionista/app/domain/usecases/auth_controller.dart';
import 'package:petshionista/app/presentation/widgets/custom_cupertino_button.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (AuthController _controller) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '펫셔니스타',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomCupertinoButton(
                onPressed: () => _controller.signIn(),
                child: Text(
                  '로그인',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
