import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color(0xff1b1b1b),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Made with ",
            style: GoogleFonts.ibmPlexMono(
              color: const Color(0xff9c9c9c),
            ),
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
