import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

import 'responsive/desktop/pages/desktop_home_page/desktop_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web portfolio',
      theme: ThemeData(
        textTheme: GoogleFonts.ibmPlexMonoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayput(
        desktop: DesktopHomePage(),
      ),
    );
  }
}
