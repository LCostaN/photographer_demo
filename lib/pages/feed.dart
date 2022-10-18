import 'package:flutter/material.dart';

import '../widgets/feed_large_item.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          FeedLargeItem(),
          FeedLargeItem(),
          FeedLargeItem(),
        ],
      ),
    );
  }
}
