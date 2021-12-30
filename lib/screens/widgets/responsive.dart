import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  const Responsive(
      {Key? key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen})
      : super(key: key);
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.height > 1200;
  }

  static bool isMediaQuery(BuildContext context) {
    return (800 < MediaQuery.of(context).size.height) &&
        (MediaQuery.of(context).size.height < 1200);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
