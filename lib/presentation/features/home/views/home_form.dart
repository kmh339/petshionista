import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petshionista/presentation/features/feeds/views/feeds_page.dart';
import 'package:petshionista/presentation/features/home/controller/home_control_cubit.dart';
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
        selectedFontSize: 12,
        selectedItemColor: Colors.black,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'feeds',
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(
              CupertinoIcons.profile_circled,
            ),
          ),
        ],
      ),
    );
  }
}
