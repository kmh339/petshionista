import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/domain/usecases/cubits/auth/auth_cubit.dart';
import 'package:petshionista/presentation/widgets/custom_cupertino_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () {
                context.read<AuthCubit>().login();
              },
              child: Text(
                '로그인',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
