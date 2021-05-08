import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
