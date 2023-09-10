import 'package:flutter/material.dart';


class cartDesktop extends StatefulWidget {
  const cartDesktop({super.key});

  @override
  State<cartDesktop> createState() => _cartDesktopState();
}

class _cartDesktopState extends State<cartDesktop> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Cart desktop screen ")),
    );
  }
}
