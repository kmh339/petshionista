import 'package:flutter/material.dart';
import 'package:petshionista/app/presentation/widgets/custom_app_bar.dart';

class FeedsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Petshionista',
      ),
    );
  }
}
