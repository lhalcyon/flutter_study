import 'package:flutter/material.dart';

class DemoOverflowBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new OverflowBox(
      minHeight: 300.0,
      child: new Container(
        height: 100.0,
        color: Colors.teal,
      ),
    );
  }
}