import 'package:flutter/material.dart';
import 'package:petshionista/domain/usecases/cubits/auth/auth_cubit.dart';
import 'package:petshionista/presentation/widgets/custom_cupertino_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreButtonModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
    );
  }
}
