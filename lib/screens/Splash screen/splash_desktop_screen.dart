import 'package:flutter/material.dart';

import '../../components/constants.dart';
import '../../components/myButton.dart';
import '../../responsive/loginLayout.dart';
import '../Login/login_desktop_screen.dart';
import '../Login/login_mobile_screen.dart';
import '../Login/login_tablet_screen.dart';

class splashDesktop extends StatefulWidget {
  const splashDesktop({super.key});

  @override
  State<splashDesktop> createState() => _splashDesktopState();
}

class _splashDesktopState extends State<splashDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.08,
            ),
            Image.asset(
              'lib/assets/images/logo.png',
              width: screenSize.width * 0.3,
              height: screenSize.height * 0.3,
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Text(
              "Happy Supermarket",
              style: TextStyle(
                  fontFamily: 'Open sans',
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width * 0.06,
                  fontStyle: FontStyle.italic,
                  color: bigTextColor),
            ),
            SizedBox(
              height: screenSize.height * 0.2,
            ),
            MyButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const loginManagement(
                        loginMobile: MobileLoginLayout(),
                        loginTablet: TabletLoginLayout(),
                        loginDesktop: DesktopLoginLayout()),
                  ),
                );
              },
              color: buttonColor,
              text: 'Get started',
              width: screenSize.width * 0.2,
              height: screenSize.height * 0.06,
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Secular One'),
            ),
          ],
        ),
      ),
    );
  }
}
