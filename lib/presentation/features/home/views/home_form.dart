import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/domain/usecases/cubits/auth/auth_cubit.dart';
import 'package:petshionista/presentation/features/splash_screen.dart';

class HomeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('home'),
        ),
      ),
    );
  }
}
