import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../widget/call_to_action_button.dart';

class HeaderMiddle extends StatelessWidget {
  const HeaderMiddle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(right: 46),
          width: 538,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 72,
                child: Text(
                  "Chinedu Jeremiah",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w800,
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Intro text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: GoogleFonts.ibmPlexMono(
                  color: const Color(0xff9c9c9c),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CallToActionButton(
                height: 63,
                width: 307,
                text: "Let's get started",
              )
            ],
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Container(
          height: 350,
          width: 350,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/dev.JPG"),
            ),
          ),
        )
      ],
    );
  }
}
