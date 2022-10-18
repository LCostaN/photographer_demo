import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppNavigationBar extends StatelessWidget {
  final int currentTab;
  final ValueChanged<int> onValueChanged;

  const AppNavigationBar(
      {Key? key, required this.currentTab, required this.onValueChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTab,
      type: BottomNavigationBarType.fixed,
      onTap: onValueChanged,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/home.svg',
            width: 26,
            height: 26,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/discover-explore.svg',
              width: 26,
              height: 26,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/circle_large.svg',
              width: 40,
              height: 40,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/shape.svg',
              width: 38,
              height: 18,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/pngs/profile.png',
              width: 26,
              height: 26,
            ),
            label: ''),
      ],
    );
  }
}
