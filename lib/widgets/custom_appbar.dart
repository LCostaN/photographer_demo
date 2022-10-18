import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'layout_button.dart';

class CustomAppbar extends StatelessWidget {
  final int layoutType;
  final ValueChanged<int> onLayoutChanged;

  const CustomAppbar(
      {Key? key, required this.layoutType, required this.onLayoutChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Feed'),
      centerTitle: true,
      titleTextStyle: const TextStyle(color: Colors.black),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/svgs/pin.svg')),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svgs/message_on.svg'))
      ],
      leadingWidth: 96,
      leading: Row(
        children: [
          LayoutButton(
            onTap: (v) => onLayoutChanged(v),
            icon: 'assets/svgs/layout_large.svg',
            index: 0,
            isSelected: layoutType == 0,
          ),
          LayoutButton(
            onTap: (v) => onLayoutChanged(v),
            icon: 'assets/svgs/layout_grid.svg',
            index: 1,
            isSelected: layoutType == 1,
          ),
        ],
      ),
      elevation: 1,
    );
  }
}
