import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
