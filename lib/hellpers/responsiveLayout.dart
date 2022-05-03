import 'package:flutter/material.dart';

const int largeSize = 1366;
const int mediumSize = 768;
const int smallSize = 360;

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  const ResponsiveLayout({Key? key,  required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,}) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumSize &&
        MediaQuery.of(context).size.width < largeSize;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= largeSize) {
          return largeScreen;
        } else if (constraints.maxWidth < largeSize &&
            constraints.maxWidth >= mediumSize) {
          return mediumScreen ;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
