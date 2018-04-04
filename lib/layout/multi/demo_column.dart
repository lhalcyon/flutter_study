import 'package:flutter/material.dart';

class DemoColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey,
      child: new Column(
        children: <Widget>[
          new Expanded(
              child: new Text('Lmaoshammy',textAlign: TextAlign.center)
          ),
          new Expanded(
              child: new Text('Peachymoomoo',textAlign: TextAlign.center)
          ),
          new Expanded(
            child: new FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}