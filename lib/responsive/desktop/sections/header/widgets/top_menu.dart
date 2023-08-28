import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 95),
      margin: const EdgeInsets.symmetric(horizontal: 85),
      decoration: const BoxDecoration(
        color: Color(0xff1B1B1B),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 717,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Home",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xff9C9C9C),
                  ),
                ),
                Text(
                  "Case Studies",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xff9C9C9C),
                  ),
                ),
                Text(
                  "Testimonials",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xff9C9C9C),
                  ),
                ),
                Text(
                  "Recent work",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xff9C9C9C),
                  ),
                ),
                Text(
                  "Get In Touch",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xff9C9C9C),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 95,
          ),
          SizedBox(
            width: 107.54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/LinkedIn.svg"),
                SvgPicture.asset("assets/icons/Behance.svg"),
                SvgPicture.asset("assets/icons/Twitter.svg"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
