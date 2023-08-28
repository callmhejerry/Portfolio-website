import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/companies_worked_with.dart';
import 'widgets/header_middle.dart';
import 'widgets/top_menu.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          CaseStudies(),
        ],
      ),
    );
  }
}

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

class CaseStudiesChild extends StatelessWidget {
  final bool _detailsFirst;
  final bool _detailsLast;
  final Color color;
  final Color chipColor;
  final String industry;
  final String workName;
  final String image;

  const CaseStudiesChild.detailsFirst({
    super.key,
    required this.color,
    required this.chipColor,
    required this.industry,
    required this.workName,
    required this.image,
  })  : _detailsFirst = true,
        _detailsLast = false;

  const CaseStudiesChild.detailsLast({
    super.key,
    required this.color,
    required this.chipColor,
    required this.industry,
    required this.workName,
    required this.image,
  })  : _detailsFirst = false,
        _detailsLast = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 892,
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _detailsFirst
              ? CaseStudiesChildDetails(
                  color: color,
                  chipColor: chipColor,
                  workName: workName,
                  industry: industry,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    image,
                    height: 300,
                    width: 445,
                    fit: BoxFit.cover,
                  ),
                ),
          _detailsLast
              ? CaseStudiesChildDetails(
                  color: color,
                  chipColor: chipColor,
                  industry: industry,
                  workName: workName,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    image,
                    height: 300,
                    width: 445,
                    fit: BoxFit.cover,
                  ),
                ),
        ],
      ),
    );
  }
}

class CaseStudiesChildDetails extends StatelessWidget {
  const CaseStudiesChildDetails({
    super.key,
    required this.color,
    required this.chipColor,
    required this.workName,
    required this.industry,
  });

  final Color color;
  final Color chipColor;
  final String workName;
  final String industry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 27,
        ),
        Chip(
          label: Text(
            industry,
            style: GoogleFonts.ibmPlexMono(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          side: BorderSide.none,
          padding: EdgeInsets.zero,
          labelPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 0,
          ),
          backgroundColor: chipColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          workName,
          style: GoogleFonts.raleway(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: const Color(0xff080808),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 421,
          height: 96,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. sed do eiusmod tempor incididunt ut labore et dolore magna.",
            style: GoogleFonts.ibmPlexMono(
              color: const Color(0xff9c9c9c),
              height: 24 / 14,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 38,
          width: 189.89,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "View case study",
                style: GoogleFonts.ibmPlexMono(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 14,
              )
            ],
          ),
        )
      ],
    );
  }
}

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
