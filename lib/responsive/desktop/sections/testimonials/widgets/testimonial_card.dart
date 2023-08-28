import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomPaint(
          // size: const Size(445, 212),
          painter: TestimonialBoxPainter(),
          child: Container(
            width: 445,
            height: 212,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xff9C9C9C),
                    fontSize: 14,
                    height: 24 / 14,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "images/dev.JPG",
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Chinedu Jeremiah",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 10,
          child: SvgPicture.asset(
            'icons/approstrophe.svg',
          ),
        ),
      ],
    );
  }
}

class TestimonialBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    LinearGradient strokeColor = LinearGradient(
      colors: [
        const Color(0xff484848),
        const Color(0xff1B1B1B).withOpacity(0),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );

    final paintBrush = Paint()
      ..strokeWidth = 1
      ..shader = strokeColor.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.stroke;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: size.width,
          height: size.height,
        ),
        const Radius.circular(6),
      ),
      paintBrush,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
