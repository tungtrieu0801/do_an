import 'package:flutter/material.dart';

class productDesktop extends StatefulWidget {
  const productDesktop({super.key});

  @override
  State<productDesktop> createState() => _productDesktopState();
}

class _productDesktopState extends State<productDesktop> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Product desktop screen ")),
    );
  }
}