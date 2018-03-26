import 'package:flutter/material.dart';

class DemoAspectRatio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: new AspectRatio(
          aspectRatio: 1.0 / 1.0,
          child: new Container(
            color: Colors.purple,
          ),)
    );
  }
}