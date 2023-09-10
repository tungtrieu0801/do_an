import 'package:flutter/material.dart';

class cartTablet extends StatefulWidget {
  const cartTablet({super.key});

  @override
  State<cartTablet> createState() => _cartTabletState();
}

class _cartTabletState extends State<cartTablet> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("cart tablet screen ")),
    );
  }
}
