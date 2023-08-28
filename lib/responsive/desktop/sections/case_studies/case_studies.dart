import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/case_studies_child.dart';

class CaseStudies extends StatelessWidget {
  const CaseStudies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 80,
      ),
      child: Column(
        children: [
          Text(
            "Case studies",
            style: GoogleFonts.raleway(
              color: const Color(0xff080808),
              fontSize: 34,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 570,
            child: Text(
              "Solving user & business problems since last 15+ years.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexMono(
                height: 24 / 14,
                color: const Color(0xff9c9c9c),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const CaseStudiesChild.detailsFirst(
            color: Color(0xffFFA217),
            chipColor: Color(0xffFFF6E9),
            industry: "Fintech",
            workName: "Kuda Micro finance bank",
            image: "images/work1.png",
          ),
          const SizedBox(height: 80),
          const CaseStudiesChild.detailsLast(
            industry: "EdTech",
            workName: "Scrolly Inc",
            image: "images/work2.png",
            color: Color(0xff000AFF),
            chipColor: Color(0xffD0E6FF),
          ),
          const SizedBox(height: 80),
          const CaseStudiesChild.detailsFirst(
            color: Color(0xff2AB090),
            chipColor: Color(0xffE0FFF8),
            industry: 'Pharma',
            workName: "Emzor",
            image: "images/work3.png",
          )
        ],
      ),
    );
  }
}
