import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/presentation/features/home/controller/home_control_cubit.dart';
import 'package:petshionista/presentation/features/home/views/home_form.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeControlCubit>(
      create: (BuildContext buildContext) => HomeControlCubit(),
      child: HomeForm(),
    );
  }
}
