import 'package:flutter/material.dart';

import '../screens/Login/login_desktop_screen.dart';
import '../screens/Login/login_mobile_screen.dart';
import '../screens/Login/login_tablet_screen.dart';

class loginManagement extends StatelessWidget {
  final Widget loginMobile;
  final Widget loginTablet;
  final Widget loginDesktop;
  const loginManagement({super.key, required this.loginMobile, required this.loginTablet, required this.loginDesktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return MobileLoginLayout();
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth <= 1000) {
        return TabletLoginLayout();
      } else {
        return DesktopLoginLayout();
      }
    });
  }
}
