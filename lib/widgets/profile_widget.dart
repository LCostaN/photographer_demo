import 'package:flutter/material.dart';
import 'package:photographer_demo/utils/contants.dart';

class ProfileWidget extends StatelessWidget {
  final String avatar;
  final String name;

  const ProfileWidget({Key? key, required this.avatar, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 16, bottom: 8, left: 12, right: 8),
          child: Image.asset(avatar),
        ),
        Expanded(
            child: Text(
          name,
          style: const TextStyle(color: primaryColor, fontSize: 14),
        )),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        )
      ],
    );
  }
}
