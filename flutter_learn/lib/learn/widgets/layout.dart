import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Demo",
      home: Scaffold(
        appBar: AppBar(title: Text("Layout Demo"),),
        body: Center(),
      ),  
    );
  }
}