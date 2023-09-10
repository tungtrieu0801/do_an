import 'package:doanchuyennganh/components/constants.dart';
import 'package:doanchuyennganh/components/myButton.dart';
import 'package:doanchuyennganh/responsive/loginLayout.dart';
import 'package:doanchuyennganh/screens/Login/login_desktop_screen.dart';
import 'package:doanchuyennganh/screens/Login/login_mobile_screen.dart';
import 'package:doanchuyennganh/screens/Login/login_tablet_screen.dart';
import 'package:flutter/material.dart';

class splashMobile extends StatefulWidget {
  const splashMobile({super.key});

  @override
  State<splashMobile> createState() => _splashMobileState();
}

class _splashMobileState extends State<splashMobile> {
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
              width: screenSize.width * 0.5,
              height: screenSize.height * 0.4,
            ),
            Text(
              "Happy Supermarket",
              style: TextStyle(
                  fontFamily: 'Open sans',
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width * 0.09,
                  fontStyle: FontStyle.italic,
                  color: bigTextColor),
            ),
            SizedBox(
              height: screenSize.height*0.3,
            ),
            MyButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const loginManagement(loginMobile: MobileLoginLayout(), loginTablet: TabletLoginLayout(), loginDesktop: DesktopLoginLayout()),
                  ),
                );
              },
              color: buttonColor,
              text: 'Get started',
              width: screenSize.width * 0.6,
              height: screenSize.height * 0.06,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Secular One'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
