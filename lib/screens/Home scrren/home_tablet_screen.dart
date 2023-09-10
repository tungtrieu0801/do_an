import 'package:flutter/material.dart';

class homeTable extends StatefulWidget {
  const homeTable({super.key});

  @override
  State<homeTable> createState() => _homeTableState();
}

class _homeTableState extends State<homeTable> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Home tablet screen ")),
    );
  }
}
