import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DemoText extends StatelessWidget {
  final TextStyle _protocolFont = new TextStyle(fontSize: 16.0);
  final TextStyle _inheritBigFont =
      new TextStyle(inherit: true, fontSize: 24.0);
  final TextStyle _notInheritBigFont =
      new TextStyle(inherit: false, fontSize: 24.0);
  TapGestureRecognizer recognizer =  new TapGestureRecognizer();
  @override
  Widget build(BuildContext context) {
    recognizer.onTap = _tap;
    return new Scaffold(
        appBar: new AppBar(
          title: const Text('Text Demo'),
        ),
        body: new Container(
            color: Colors.grey,
            alignment: Alignment.center,
            child: new Column(
              children: <Widget>[
                new Text('inherit true', style: _inheritBigFont),
                new Text('inherit false', style: _notInheritBigFont),
                new Divider(),
                new RichText(
                  text: new TextSpan(
                    text: '我已阅读',
                    style: _protocolFont,
                    children: <TextSpan>[
                      new TextSpan(
                          text: '《从flutter入门到放弃》',
                          style: new TextStyle(color: Colors.redAccent),recognizer: recognizer),
                    ],
                  ),
                ),
              ],
            )));
  }

  void _tap() {
    print("tap protocol");
  }
}
