import 'package:doanchuyennganh/components/constants.dart';
import 'package:doanchuyennganh/components/my_checkbox.dart';
import 'package:flutter/material.dart';

import '../../components/myButton.dart';
import '../../components/my_text_field.dart';
import '../../components/my_text_file_password.dart';
import '../../responsive/loginLayout.dart';
import '../Login/login_desktop_screen.dart';
import '../Login/login_mobile_screen.dart';
import '../Login/login_tablet_screen.dart';

class MobileRegisterLayout extends StatefulWidget {
  const MobileRegisterLayout({super.key});

  @override
  State<MobileRegisterLayout> createState() => _MobileRegisterLayoutState();
}

class _MobileRegisterLayoutState extends State<MobileRegisterLayout> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery
        .of(context)
        .size;
    return Center(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.07,
              ),
              const Text(
                "Register!",
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
                "Create your new account",
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
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
                height: screenSize.height * 0.03,
              ),
              MyTextFieldpassword(
                controller: passwordConfirmController,
                hintText: "Confirm password",
                obscureText: true,
                image: Image.asset(
                  'lib/assets/images/lock.png',
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: CustomCheckbox(
                      value: false, // Giá trị của ô vuông (true hoặc false)
                      onChanged: (newValue) {
                        // Xử lý sự kiện khi ô vuông thay đổi giá trị
                        // Thường bạn sẽ cập nhật một biến ở đây để lưu giữ giá trị của ô vuông
                      },
                      size: 15, // Tuỳ chỉnh kích thước
                      activeColor: Colors.grey, // Tuỳ chỉnh màu sắc
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Remember me",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: bigTextColor,
                          fontFamily: 'SecularOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: screenSize.height * 0.03,
              ),
              MyButton(
                onTap: () {},
                color: buttonColor,
                text: "Sign up",
                width: 121,
                height: 40,
                textStyle: TextStyle(
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
                      MaterialPageRoute(builder: (context)
                  =>
                  const loginManagement(loginMobile: MobileLoginLayout(),
                      loginTablet: TabletLoginLayout(),
                      loginDesktop: DesktopLoginLayout()),)
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                    text: "Already have an account?",
                    children: [
                      TextSpan(
                        text: '  LOG IN',
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
                      width: screenSize.width * 0.05,
                    ),
                    Image.asset(
                      'lib/assets/images/google.png',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
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
    );
  }
}
