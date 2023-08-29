import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/next_page_indicator.dart';
import 'widgets/recent_work_card.dart';

class RecentWork extends StatefulWidget {
  const RecentWork({super.key});

  @override
  State<RecentWork> createState() => _RecentWorkState();
}

class _RecentWorkState extends State<RecentWork> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 85,
        vertical: 80,
      ),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Recent Work",
            style: GoogleFonts.raleway(
              color: const Color(0xff080808),
              fontSize: 34,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            width: 570,
            child: Text(
              "Solving user & business problems since last 15+ years.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexMono(
                height: 24 / 14,
                fontSize: 14,
                color: const Color(0xff9c9c9c),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NextPageIndicator(
                  pageAction: PageAction.previous,
                  ontap: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.linear,
                    );
                  },
                ),
                const SizedBox(
                  width: 45,
                ),
                SizedBox(
                  width: 920 + 20 + 20,
                  height: 494,
                  child: PageView(
                    controller: _pageController,
                    children: const [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          RecentWorkCard(),
                          SizedBox(width: 30),
                          RecentWorkCard(),
                          SizedBox(width: 20),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          RecentWorkCard(),
                          SizedBox(width: 30),
                          RecentWorkCard(),
                          SizedBox(width: 20),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 45,
                ),
                NextPageIndicator(
                  pageAction: PageAction.next,
                  ontap: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.linear,
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
