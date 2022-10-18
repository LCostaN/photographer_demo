import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:photographer_demo/utils/contants.dart';

class NotificationItem extends StatelessWidget {
  final TempNotification data;
  final DateTime? lastTimestamp;

  const NotificationItem({Key? key, required this.data, this.lastTimestamp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String date = Moment(data.timestamp).format('DD/MM');
    String day = Moment(data.timestamp).calendar(omitHours: true);
    bool showDateBar =
        !Moment(data.timestamp).isAtSameDayAs(lastTimestamp ?? DateTime(2022));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: Column(
            children: [
              showDateBar
                  ? Column(
                      children: [
                        const Divider(
                          color: greyColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              day,
                              style: const TextStyle(
                                  color: primaryColor, fontSize: 12),
                            ),
                            Text(
                              date,
                              style: const TextStyle(
                                  color: primaryColor, fontSize: 10),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        )
                      ],
                    )
                  : const SizedBox(),
              Row(
                children: [
                  Image.asset(data.profile),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                    ),
                    child: Text(
                      data.message,
                      style: TextStyle(color: primaryColor, fontSize: 14),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
