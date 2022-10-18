import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photographer_demo/pages/feed.dart';
import 'package:photographer_demo/pages/notifications.dart';
import 'package:photographer_demo/utils/contants.dart';

import '../widgets/app_navigation_bar.dart';
import '../widgets/layout_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 2;
  int _layoutType = 0;
  static const List<Widget> _pages = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Discover Screen')),
    FeedPage(),
    NotificationPage(),
    Center(child: Text('Profile Screen'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: darkColor, fontSize: 14),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset('assets/svgs/pin.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/message_on.svg'))
        ],
        leadingWidth: 96,
        leading: _renderLeading(),
        elevation: 1,
      ),
      body: _pages.elementAt(_currentTab),
      bottomNavigationBar: AppNavigationBar(
        currentTab: _currentTab,
        onValueChanged: (int value) => setState(() => _currentTab = value),
      ),
    );
  }

  Widget _renderLeading() {
    if (_currentTab == 2) {
      return Row(
        children: [
          LayoutButton(
            onTap: (v) => setState(() => _layoutType = v),
            icon: 'assets/svgs/layout_large.svg',
            index: 0,
            isSelected: _layoutType == 0,
          ),
          LayoutButton(
            onTap: (v) => setState(() => _layoutType = v),
            icon: 'assets/svgs/layout_grid.svg',
            index: 1,
            isSelected: _layoutType == 1,
          ),
        ],
      );
    } else {
      return BackButton(
          color: darkColor, onPressed: () => setState(() => _currentTab = 2));
    }
  }
}
