import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCustomModal({
  required BuildContext context,
  required double height,
  required Widget child,
}) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    builder: (BuildContext buildContext) => SizedBox(
      height: height,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 8,
          ),
          const Icon(
            CupertinoIcons.line_horizontal_3,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 8,
          ),
          child,
        ],
      ),
    ),
  );
}
