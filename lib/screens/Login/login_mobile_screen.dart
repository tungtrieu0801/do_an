import 'package:doanchuyennganh/screens/Register/register_mobile_screen.dart';
import 'package:flutter/material.dart';

import '../../components/constants.dart';
import '../../components/myButton.dart';
import '../../components/my_text_field.dart';
import '../../components/my_text_file_password.dart';
import '../../responsive/registerLayout.dart';
import '../Register/register_desktop_screen.dart';
import '../Register/register_tablet_screen.dart';

class MobileLoginLayout extends StatefulWidget {
  const MobileLoginLayout({super.key});

  @override
  State<MobileLoginLayout> createState() => _MobileLoginLayoutState();
}

class _MobileLoginLayoutState extends State<MobileLoginLayout> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Center(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Logo
                  SizedBox(
                    height: screenSize.height * 0.09,
                  ),
                  Image.asset(
                    'lib/assets/images/logo.png',
                    width: screenSize.width * 0.4,
                    height: screenSize.height * 0.15,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: bigTextColor,
                      fontFamily: 'SecularOne',
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.015,
                  ),
                  const Text(
                    "Login to your existing account",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  MyTextField(
                    controller: usernameController,
                    hintText: "Username or email",
                    obscureText: false,
                    image: Image.asset(
                      'lib/assets/images/user.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),

                  MyTextFieldpassword(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                    image: Image.asset(
                      'lib/assets/images/lock.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: bigTextColor,
                          fontFamily: 'SecularOne',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  MyButton(
                    onTap: () {},
                    color: buttonColor,
                    text: "Sign in",
                    width: 121,
                    height: 40,
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Secular One',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Điều hướng đến trang đăng ký khi nhấn vào "SIGN UP"
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const registerManager(
                            registerMobile: MobileRegisterLayout(),
                            registerTablet: TabletRegisterLayout(),
                            registerDesktop:
                            DesktopRegisterLayout())),
                      );
                    },
                    child: const Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                        text: "Don't have an account?",
                        children: [
                          TextSpan(
                            text: '  SIGN UP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue, // Màu văn bản "SIGN UP"
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("OR"),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  const Text(
                    "Sign up with social network",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/facebook.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'lib/assets/images/google.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'lib/assets/images/github.png',
                          width: 40,
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
