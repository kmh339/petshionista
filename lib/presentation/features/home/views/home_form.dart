import 'package:flutter/material.dart';
import 'package:petshionista/presentation/widgets/custom_app_bar.dart';

class HomeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '홈',
      ),
    );
  }
}
