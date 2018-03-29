import 'package:flutter/material.dart';


class DemoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Demo Image';

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Column(
          children: <Widget>[
            new Image.network(
              'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
            ),
          ],
        ));
  }
}