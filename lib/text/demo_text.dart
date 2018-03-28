import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DemoText extends StatefulWidget {
  final TextStyle _protocolFont = new TextStyle(fontSize: 16.0);
  final TextStyle _inheritBigFont =
      new TextStyle(inherit: true, fontSize: 24.0);
  final TextStyle _notInheritBigFont =
      new TextStyle(inherit: false, fontSize: 24.0);

  @override
  DemoTextState createState() {
    return new DemoTextState();
  }
}

class DemoTextState extends State<DemoText> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: const Text('Text Demo'),
        ),
        body: new Builder(builder: builderBody));
  }

  Widget builderBody(BuildContext context) {
    final TapGestureRecognizer recognizer = new TapGestureRecognizer();
    recognizer.onTap = () {
      Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text('协议被点击!'),
          ));
    };

    final Divider divider = new Divider(color: Colors.white, height: 2.0);

    return new Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Text('inherit true', style: widget._inheritBigFont),
            new Text('inherit false', style: widget._notInheritBigFont),
            divider,
            new Text(
              '龙骑士囧雪诺JohnSnow',
              style: new TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                  decoration: TextDecoration.underline),
            ),
            divider,
            new RichText(
              text: new TextSpan(
                text: '我已阅读',
                style: widget._protocolFont,
                children: <TextSpan>[
                  new TextSpan(
                      text: '《从flutter入门到放弃》',
                      style: new TextStyle(color: Colors.redAccent),
                      recognizer: recognizer),
                ],
              ),
            ),
          ],
        ));
  }
}
