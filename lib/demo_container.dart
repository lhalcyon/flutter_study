import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.teal.shade700,
        alignment: Alignment.center,
        child: new Container(
          width: 200.0,
          height: 200.0,
          color: Colors.purple,
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: new Text('Halcyon',style: const TextStyle(color: Colors.white,fontSize: 24.0),),
        )

    );
  }
}