import 'package:flutter/material.dart';

class DemoAlign extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Align(
        alignment: Alignment.centerRight,
        child: const Text('Halcyon',style: const TextStyle(color: Colors.blue ,fontSize: 24.0),),
      ),
    );
  }
}