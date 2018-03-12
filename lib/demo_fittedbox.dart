import 'package:flutter/material.dart';

class DemoFittedBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      color: Colors.grey,
      child: new FittedBox(
        alignment: Alignment.centerRight,
        fit: BoxFit.fitHeight,
        child: new Container(
          color: Colors.teal,
          width: 100.0, height: 100.0,),
      ),
    );
  }
}