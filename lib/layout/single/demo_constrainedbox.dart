import 'package:flutter/material.dart';

class DemoConstrainedBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: new ConstrainedBox(
        constraints: new BoxConstraints(minHeight: 100.0,maxHeight: 300.0,minWidth: 100.0,maxWidth: 300.0),
        child: const Card(child: const Text('Halcyon Days',
            style: const TextStyle(color: Colors.teal, fontSize: 24.0)),),
      ),
    );
  }
}