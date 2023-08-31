import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widget/call_to_action_button.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff080808),
      padding: const EdgeInsets.symmetric(
        vertical: 80,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get In Touch",
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
              style: GoogleFonts.ibmPlexMono(
                color: const Color(0xff9C9C9C),
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 40),
          const CustomTextField(
            title: "Email",
            hintText: "Please enter your email",
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            title: "Mobile",
            hintText: "Enter mobile",
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            title: "Message",
            hintText: "Enter your message",
            maxlines: 5,
          ),
          const SizedBox(height: 20),
          const CallToActionButton(
            height: 50,
            text: "Submit",
            width: 350,
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final int maxlines;
  const CustomTextField({
    super.key,
    required this.title,
    this.maxlines = 1,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexMono(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 350,
          child: TextField(
            maxLines: maxlines,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: GoogleFonts.ibmPlexMono(
                color: const Color(0xff9c9c9c),
                fontSize: 12,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
