import 'package:flutter/material.dart';

class DemoConstrainedBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: new ConstrainedBox(
        constraints: const BoxConstraints.expand(width: 300.0 ,height: 300.0),
        child: const Card(child: const Text('Halcyon',
            style: const TextStyle(color: Colors.teal, fontSize: 24.0)),),

      ),
    );
  }
}