import 'package:flutter/material.dart';

class DemoAspectRatio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: new AspectRatio(
          aspectRatio: 3.0 / 1.0,  //    ratio = 宽 / 高 ,
          child: new Container(
            color: Colors.purple,
          ),)
    );
  }
}