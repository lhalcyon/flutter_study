import 'package:flutter/material.dart';

class DemoPadding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      new Container(
        color: Colors.blueGrey,
        child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: const Card(color: Colors.white, child: const Text('halcyon'),
          ),
        ),
      );
  }
}