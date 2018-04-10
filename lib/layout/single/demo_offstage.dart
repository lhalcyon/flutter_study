import 'package:flutter/material.dart';

class DemoOffStage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 200.0,
          color: Colors.grey,
        ),
        new Offstage(
          offstage: true, // 默认为true ,
          child: new Container(
            height: 100.0,
            color: Colors.pink,
          ),
        ),
        new Container(
          height: 100.0,
          color: Colors.teal,
        )
      ],
    );
  }
}