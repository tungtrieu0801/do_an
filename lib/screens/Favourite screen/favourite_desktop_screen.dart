import 'package:flutter/material.dart';

class favouriteDesktop extends StatefulWidget {
  const favouriteDesktop({super.key});

  @override
  State<favouriteDesktop> createState() => _favouriteDesktopState();
}

class _favouriteDesktopState extends State<favouriteDesktop> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("favourite desktop screen ")),
    );
  }
}
