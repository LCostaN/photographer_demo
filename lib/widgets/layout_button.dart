import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photographer_demo/utils/contants.dart';

class LayoutButton extends StatelessWidget {
  final ValueChanged<int> onTap;
  final String icon;
  final int index;
  final bool isSelected;

  const LayoutButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      required this.index,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onTap(index),
      icon: Container(
          decoration: isSelected
              ? BoxDecoration(
                  border: Border.all(color: darkColor, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(2)))
              : null,
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
          child: SvgPicture.asset(icon)),
    );
  }
}
