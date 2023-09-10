import 'package:flutter/material.dart';

class productTablet extends StatefulWidget {
  const productTablet({super.key});

  @override
  State<productTablet> createState() => _productTabletState();
}

class _productTabletState extends State<productTablet> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Product tablet screen ")),
    );
  }
}
