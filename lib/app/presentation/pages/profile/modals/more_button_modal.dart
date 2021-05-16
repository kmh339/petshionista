import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:petshionista/app/domain/usecases/auth_controller.dart';
import 'package:petshionista/app/presentation/widgets/custom_cupertino_button.dart';

class MoreButtonModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomCupertinoButton(
            onPressed: () {
              Get.back<void>();
              Get.find<AuthController>().signOut();
            },
            child: const Text(
              '로그아웃',
            ),
          ),
        ),
      ],
    );
  }
}
