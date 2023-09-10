import 'package:flutter/material.dart';

class favouriteMobile extends StatefulWidget {
  const favouriteMobile({super.key});

  @override
  State<favouriteMobile> createState() => _favouriteMobileState();
}

class _favouriteMobileState extends State<favouriteMobile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("favourite mobile screen ")),
    );
  }
}
