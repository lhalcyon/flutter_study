import 'package:flutter/material.dart';

class DemoSizedOverflowBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new SizedOverflowBox(
      size: const Size(50.0, 50.0),
      child: new Container(
        color: Colors.teal,
        height: 400.0,
        width: 400.0,
      ),
    );
  }
}