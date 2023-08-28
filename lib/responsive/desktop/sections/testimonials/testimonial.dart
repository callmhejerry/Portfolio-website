import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/testimonial_card.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xff080808),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 180, vertical: 80),
        child: Column(
          children: [
            Text(
              "Testimonials",
              style: GoogleFonts.raleway(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 570,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexMono(
                  color: const Color(0xff9C9C9C),
                  height: 24 / 14,
                ),
              ),
            ),
            const SizedBox(height: 60),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialCard(
                  image: "images/dev.JPG",
                  name: "Chinedu Jeremiah",
                ),
                TestimonialCard(
                  image: "images/employee.png",
                  name: "Mary Jane",
                ),
              ],
            ),
            const SizedBox(height: 62),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TestimonialCard(
                  image: "images/employee.png",
                  name: "Chinaza Chinedu",
                ),
                TestimonialCard(
                  image: "images/dev.JPG",
                  name: "Chinedu Jeremiah",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
