import 'package:flutter/material.dart';
import 'package:petshionista/presentation/features/home/views/home_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petshionista',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeForm(),
    );
  }
}
