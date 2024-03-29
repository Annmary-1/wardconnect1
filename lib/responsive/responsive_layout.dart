import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout(
      {required this.desktopScaffold,
      required this.mobileScaffold,
      required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 2080) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 3100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
