import 'package:flutter/material.dart';

class DemoSizedBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: 50.0,
      width: 50.0,
      child: new Container(
        color: Colors.teal,
        height: 400.0,
        width: 400.0,
      ),
    );
  }
}