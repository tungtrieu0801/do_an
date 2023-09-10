import 'package:flutter/material.dart';

import '../../components/constants.dart';
import '../../components/myButton.dart';
import '../Login/login_tablet_screen.dart';

class splashTablet extends StatefulWidget {
  const splashTablet({super.key});

  @override
  State<splashTablet> createState() => _splashTabletState();
}

class _splashTabletState extends State<splashTablet> {
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
              height: screenSize.height * 0.04,
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
                    builder: (context) => const TabletLoginLayout(),
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

