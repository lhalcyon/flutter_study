import 'package:flutter/material.dart';

class DemoFractionallySizedBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: new FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: new Container(
          color: Colors.teal,
        ),
      ),
    );
  }
}