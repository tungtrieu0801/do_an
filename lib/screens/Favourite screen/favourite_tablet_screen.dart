import 'package:flutter/material.dart';

class favouriteTable extends StatefulWidget {
  const favouriteTable({super.key});

  @override
  State<favouriteTable> createState() => _favouriteTableState();
}

class _favouriteTableState extends State<favouriteTable> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Table mobile screen ")),
    );
  }
}
