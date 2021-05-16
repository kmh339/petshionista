import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:petshionista/app/presentation/pages/feeds/views/feeds_view.dart';
import 'package:petshionista/app/presentation/pages/home/controllers/home_controller.dart';
import 'package:petshionista/app/presentation/pages/my_feeds/views/my_feeds_view.dart';
import 'package:petshionista/app/presentation/pages/my_friends/views/my_friends_view.dart';
import 'package:petshionista/app/presentation/pages/profile/views/profile_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (HomeController _controller) => Scaffold(
        body: IndexedStack(
          index: _controller.tabIndex,
          children: <Widget>[
            FeedsView(),
            MyFriendsView(),
            MyFeedsView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int tabIndex) => _controller.updateIndex(tabIndex),
          currentIndex: _controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          selectedItemColor: Colors.black,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 1,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '피드',
              icon: Icon(
                CupertinoIcons.house,
              ),
              activeIcon: Icon(
                CupertinoIcons.house_fill,
              ),
            ),
            BottomNavigationBarItem(
              label: '내 친구',
              icon: Icon(
                CupertinoIcons.person_2,
              ),
              activeIcon: Icon(
                CupertinoIcons.person_2_fill,
              ),
            ),
            BottomNavigationBarItem(
              label: '내 피드',
              icon: Icon(
                CupertinoIcons.today,
              ),
              activeIcon: Icon(
                CupertinoIcons.today_fill,
              ),
            ),
            BottomNavigationBarItem(
              label: '프로필',
              icon: Icon(
                CupertinoIcons.person_circle,
              ),
              activeIcon: Icon(
                CupertinoIcons.person_circle_fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
