import 'package:flutter/material.dart';

class DemoPadding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
        new Container(
          color: Colors.teal,
          child: new Padding(
              padding: new EdgeInsets.all(16.0),
              child: const Card(color: Colors.blue,child: const Text('halcyon'),
              ),
          ),
        );

  }
}