import 'package:flutter/material.dart';

import 'sections/case_studies/case_studies.dart';
import 'sections/header/header.dart';

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
