import 'package:flutter/material.dart';

class DemoBaseline extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      child: new Baseline(
          baseline: 100.0, baselineType: TextBaseline.ideographic,
          child: new Text('Halcyon')),
    );
  }
}