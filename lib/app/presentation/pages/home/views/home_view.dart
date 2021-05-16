import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petshionista/app/presentation/pages/feeds/views/feeds_view.dart';
import 'package:petshionista/app/presentation/pages/my_feeds/views/my_feeds_view.dart';
import 'package:petshionista/app/presentation/pages/my_friends/views/my_friends_view.dart';
import 'package:petshionista/app/presentation/pages/profile/views/profile_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _tabIndex,
        children: <Widget>[
          FeedsView(),
          MyFriendsView(),
          MyFeedsView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int tabIndex) {},
        currentIndex: _tabIndex,
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
    );
  }
}
