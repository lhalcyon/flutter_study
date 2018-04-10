import 'package:flutter/material.dart';

class DemoTransform extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey,
      alignment: Alignment.center,
      child: new Transform(
        alignment: Alignment.topRight,
        transform: new Matrix4.rotationZ(50.0),
        child: new Container(
          padding: const EdgeInsets.all(8.0),
          height: 200.0,
          width: 200.0,
          color: Colors.teal,
          child: const Text('halcyon'),
        ),
      ),
    );
  }
}