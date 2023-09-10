import 'package:flutter/material.dart';

class cartMobile extends StatefulWidget {
  const cartMobile({super.key});

  @override
  State<cartMobile> createState() => _cartMobileState();
}

class _cartMobileState extends State<cartMobile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Cart mobile screen ")),
    );
  }
}
