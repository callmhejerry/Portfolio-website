import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallToActionButton extends StatelessWidget {
  const CallToActionButton({
    super.key,
    required this.height,
    required this.text,
    required this.width,
  });

  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xff3F8E00),
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            offset: const Offset(0, 8),
            color: const Color(0xff3F8E00).withOpacity(50 / 100),
          )
        ],
        border: Border.all(
          color: const Color(0xff62BA1B),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.ibmPlexMono(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 17,
          )
        ],
      ),
    );
  }
}
