import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petshionista/app/presentation/pages/profile/modals/more_button_modal.dart';
import 'package:petshionista/app/presentation/utils/show_custom_modal.dart';
import 'package:petshionista/app/presentation/widgets/circle_avatar_button.dart';
import 'package:petshionista/app/presentation/widgets/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Profile',
        actions: [
          CupertinoButton(
            onPressed: () => showCustomModal(
              context: context,
              height: 200,
              child: MoreButtonModal(),
            ),
            child: const Icon(
              CupertinoIcons.ellipsis,
              color: Colors.black,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            minSize: 24,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: <Widget>[
                CircleAvatarButton(
                  onPressed: () {},
                  imageUrl: 'https://www.olchiolchi.com/wp-content/uploads/2017/06/14.jpg',
                  radius: 40,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  '닉네임',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}