import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:photographer_demo/utils/contants.dart';
import 'package:photographer_demo/widgets/profile_widget.dart';

class FeedLargeItem extends StatefulWidget {
  const FeedLargeItem({Key? key}) : super(key: key);

  @override
  State<FeedLargeItem> createState() => _FeedLargeItemState();
}

class _FeedLargeItemState extends State<FeedLargeItem> {
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const ProfileWidget(
            avatar: 'assets/pngs/profile.png', name: 'Samantha'),
        SizedBox(
          height: screenWidth * 1.25,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) => _currentPageNotifier.value = index,
            children: [
              Image.asset(
                'assets/pngs/sample_img.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/pngs/sample_img.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/pngs/sample_img.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/pngs/sample_img.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/svgs/share.svg')),
                      const Text(
                        '300',
                        style: TextStyle(color: primaryColor, fontSize: 12),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/svgs/pin.svg'))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CirclePageIndicator(
                  currentPageNotifier: _currentPageNotifier,
                  itemCount: 4,
                  size: 6,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/svgs/message.svg')),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/svgs/heart.svg')),
                      const Text('50.4k',
                          style: TextStyle(color: primaryColor, fontSize: 12))
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
