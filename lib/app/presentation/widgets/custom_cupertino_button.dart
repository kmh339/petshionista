import 'package:flutter/cupertino.dart';

class CustomCupertinoButton extends StatelessWidget {
  const CustomCupertinoButton({
    required this.onPressed,
    required this.child,
    this.color,
  });

  final VoidCallback onPressed;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 48,
        child: child,
      ),
      minSize: 0,
      padding: EdgeInsets.zero,
      color: color ?? CupertinoColors.activeBlue,
    );
  }
}
