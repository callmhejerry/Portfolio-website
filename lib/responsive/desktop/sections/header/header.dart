import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/companies_worked_with.dart';
import 'widgets/header_middle.dart';
import 'widgets/top_menu.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff080808),
      child: Column(
        children: [
          const TopMenu(),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 180),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderMiddle(),
                const SizedBox(
                  height: 57,
                ),
                Text(
                  "worked with",
                  style:
                      GoogleFonts.ibmPlexMono(color: const Color(0xff9c9c9c)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CompainesWorkedWith(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
