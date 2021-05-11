import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/presentation/features/feeds/views/feeds_page.dart';
import 'package:petshionista/presentation/features/home/controller/home_control_cubit.dart';
import 'package:petshionista/presentation/features/my_feeds/views/my_feeds_page.dart';
import 'package:petshionista/presentation/features/my_friends/views/my_friends_page.dart';
import 'package:petshionista/presentation/features/profile/views/profile_page.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeControlCubit, HomeControlState>(
        builder: (BuildContext buildContext, HomeControlState state) {
          return IndexedStack(
            index: _tabIndex,
            children: <Widget>[
              FeedsPage(),
              MyFriendsPage(),
              MyFeedsPage(),
              ProfilePage(),
            ],
          );
        },
        listener: (BuildContext buildContext, HomeControlState state) {
          if (state is HomeControlChangeTabSuccess) {
            setState(() {
              _tabIndex = state.tabIndex;
            });
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int tabIndex) => context.read<HomeControlCubit>().changeTab(tabIndex: tabIndex),
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
