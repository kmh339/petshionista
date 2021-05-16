import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarButton extends StatelessWidget {
  const CircleAvatarButton({
    required this.onPressed,
    required this.imageUrl,
    required this.radius,
  });

  final VoidCallback onPressed;
  final String imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: CircleAvatar(
        maxRadius: radius,
        backgroundColor: Colors.black12,
        backgroundImage: ExtendedNetworkImageProvider(
          imageUrl,
          cache: true,
        ),
      ),
      minSize: 0,
      padding: EdgeInsets.zero,
    );
  }
}
