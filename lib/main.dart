import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/data/repositories/auth_repository_impl.dart';
import 'package:petshionista/domain/repositories/auth_repository.dart';
import 'package:petshionista/domain/usecases/cubits/auth/auth_cubit.dart';
import 'package:petshionista/presentation/core/constants.dart';
import 'package:petshionista/presentation/features/home/views/home_form.dart';
import 'package:petshionista/presentation/features/home/views/home_page.dart';
import 'package:petshionista/presentation/features/splash_screen.dart';

void main() {
  runApp(
    RepositoryProvider<AuthRepository>(
      create: (BuildContext buildContext) => AuthRepositoryImpl(),
      child: BlocProvider<AuthCubit>(
        create: (BuildContext buildContext) => AuthCubit(
          authRepository: RepositoryProvider.of(buildContext),
        )..startApplication(),
        child: Petshionistar(),
      ),
    ),
  );
}

class Petshionistar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petshionista',
      theme: customThemeData,
      home: Scaffold(
        body: BlocBuilder<AuthCubit, AuthState>(
          builder: (BuildContext buildContext, AuthState state) {
            if (state is AuthFailure) {
              return Container();
            }
            if (state is AuthSuccess) {
              return HomePage();
            }
            return SplashScreen();
          },
        ),
      ),
    );
  }
}
