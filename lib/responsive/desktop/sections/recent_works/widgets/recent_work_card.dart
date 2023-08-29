import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../widget/call_to_action_button.dart';

class RecentWorkCard extends StatelessWidget {
  const RecentWorkCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 494,
      width: 445,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              "images/recentWork1.jpg",
              height: 300,
              width: 445,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Roam Mate",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w800,
              color: const Color(0xff080808),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Labore et dolore magna aliqua. sed do eiusmod tempor incididunt ut labore et dolore magna.",
            style: GoogleFonts.ibmPlexMono(
              color: const Color(0xff9c9c9c),
              // height: 24 / 14,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          const CallToActionButton(
            height: 38,
            text: "Know more",
            width: 140,
          ),
        ],
      ),
    );
  }
}
