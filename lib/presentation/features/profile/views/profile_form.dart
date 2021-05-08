import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petshionista/domain/usecases/cubits/auth/auth_cubit.dart';
import 'package:petshionista/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/presentation/widgets/custom_cupertino_button.dart';

class ProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomCupertinoButton(
              onPressed: () {
                context.read<AuthCubit>().logout();
              },
              child: const Text(
                '로그아웃',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
