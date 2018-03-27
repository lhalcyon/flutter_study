import 'package:flutter/material.dart';


class DemoIntrinsicHeight extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey,
      child: new IntrinsicHeight(
        child: new Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}