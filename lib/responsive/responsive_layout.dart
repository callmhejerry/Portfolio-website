import 'package:flutter/material.dart';

class ResponsiveLayput extends StatelessWidget {
  final Widget desktop;
  const ResponsiveLayput({super.key, required this.desktop});

  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    return LayoutBuilder(builder: (context, constraints) {
      return desktop;
    });
  }
}
