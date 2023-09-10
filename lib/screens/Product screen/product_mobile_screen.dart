import 'package:flutter/material.dart';

class productMobile extends StatefulWidget {
  const productMobile({super.key});

  @override
  State<productMobile> createState() => _productMobileState();
}

class _productMobileState extends State<productMobile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Product mobile screen ")),
    );
  }
}
