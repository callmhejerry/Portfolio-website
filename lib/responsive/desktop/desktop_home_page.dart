import 'package:flutter/material.dart';
import 'package:portfolio/responsive/desktop/sections/testimonials/testimonial.dart';

import 'sections/case_studies/case_studies.dart';
import 'sections/header/header.dart';
import 'sections/recent_works/recent_work.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          CaseStudies(),
          Testimonials(),
          RecentWork(),
        ],
      ),
    );
  }
}
