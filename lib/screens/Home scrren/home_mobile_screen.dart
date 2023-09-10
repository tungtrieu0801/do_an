import 'package:flutter/material.dart';

class homeMobile extends StatefulWidget {
  const homeMobile({super.key});

  @override
  State<homeMobile> createState() => _homeMobileState();
}

class _homeMobileState extends State<homeMobile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Home mobile screen ")),
    );
  }
}
