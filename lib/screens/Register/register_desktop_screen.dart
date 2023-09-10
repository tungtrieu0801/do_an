import 'package:doanchuyennganh/screens/Register/register_mobile_screen.dart';
import 'package:doanchuyennganh/screens/Register/register_tablet_screen.dart';
import 'package:flutter/material.dart';

import '../../components/constants.dart';
import '../../components/myButton.dart';
import '../../components/my_text_field.dart';
import '../../components/my_text_file_password.dart';
import '../../responsive/registerLayout.dart';

class DesktopRegisterLayout extends StatefulWidget {
  const DesktopRegisterLayout({super.key});

  @override
  State<DesktopRegisterLayout> createState() => _DesktopRegisterLayoutState();
}

class _DesktopRegisterLayoutState extends State<DesktopRegisterLayout> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: backgroundColor,
                child: Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.3),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'lib/assets/images/logo.png',
                          width: screenSize.width * 0.3,
                          height: screenSize.height * 0.3,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.13,
                      ),
                      Text(
                        "Happy Supermarket",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open sans',
                            fontSize: 40,
                            color: bigTextColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Container(
                  color: backgroundColor,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenSize.height * 0.08),
                    child: Column(
                      children: [
                        const Text(
                          "Register!",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: bigTextColor,
                            fontFamily: 'SecularOne',
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.001,
                        ),
                        const Text(
                          "Create your new account",
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
                          hintText: "Username",
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
                        MyTextField(
                          controller: usernameController,
                          hintText: "Email",
                          obscureText: false,
                          image: Image.asset(
                            'lib/assets/images/mail.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.04,
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
                          height: screenSize.height * 0.04,
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
                              MaterialPageRoute(
                                  builder: (context) => registerManager(
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
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
                          padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/assets/images/facebook.png',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'lib/assets/images/google.png',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
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
          ],
        ),
      ),
    );
  }
}