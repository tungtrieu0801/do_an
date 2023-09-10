import 'package:flutter/material.dart';

import '../screens/Register/register_desktop_screen.dart';
import '../screens/Register/register_mobile_screen.dart';
import '../screens/Register/register_tablet_screen.dart';

class registerManager extends StatelessWidget {
  final Widget registerMobile;
  final Widget registerTablet;
  final Widget registerDesktop;
  const registerManager({super.key, required this.registerMobile, required this.registerTablet, required this.registerDesktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return MobileRegisterLayout();
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth <= 1000) {
        return TabletRegisterLayout();
      } else {
        return DesktopRegisterLayout();
      }
    });
  }
}
