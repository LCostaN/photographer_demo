import 'package:flutter/material.dart';
import 'package:photographer_demo/widgets/notification_item.dart';

import '../utils/contants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: notifications
            .asMap()
            .map((i, e) => MapEntry(
                i,
                NotificationItem(
                  data: e,
                  lastTimestamp: i > 0 ? notifications[i - 1].timestamp : null,
                )))
            .values
            .toList(),
      ),
    );
  }
}
