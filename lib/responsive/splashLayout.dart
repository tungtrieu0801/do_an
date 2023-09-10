import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobileSplashLayout;
  final Widget tabletSplashLayout;
  final Widget desktopSplashLayout;

  const Responsive({super.key,
    required this.mobileSplashLayout,
    required this.tabletSplashLayout,
    required this.desktopSplashLayout,});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileSplashLayout;
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth <= 1000) {
        return tabletSplashLayout;
      } else {
        return desktopSplashLayout;
      }
    });
  }
}
