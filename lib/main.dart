import 'package:doanchuyennganh/responsive/splashLayout.dart';
import 'package:doanchuyennganh/screens/Login/login_desktop_screen.dart';
import 'package:doanchuyennganh/screens/Login/login_mobile_screen.dart';
import 'package:doanchuyennganh/screens/Login/login_tablet_screen.dart';
import 'package:doanchuyennganh/screens/Splash%20screen/splash_desktop_screen.dart';
import 'package:doanchuyennganh/screens/Splash%20screen/splash_mobile_screen.dart';
import 'package:doanchuyennganh/screens/Splash%20screen/splash_tablet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(
        mobileSplashLayout: splashMobile(),
        tabletSplashLayout: splashTablet(),
        desktopSplashLayout: splashDesktop(),
      ),
    );
  }
}

