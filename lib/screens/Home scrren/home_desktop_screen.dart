import 'package:flutter/material.dart';

class homeDesktop extends StatefulWidget {
  const homeDesktop({super.key});

  @override
  State<homeDesktop> createState() => _homeDesktopState();
}

class _homeDesktopState extends State<homeDesktop> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("home desktop screen ")),
    );
  }
}
