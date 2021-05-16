import 'package:flutter/cupertino.dart';
import 'package:petshionista/app/presentation/widgets/custom_cupertino_button.dart';

class MoreButtonModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomCupertinoButton(
            onPressed: () {},
            child: const Text(
              '로그아웃',
            ),
          ),
        ),
      ],
    );
  }
}
