import 'package:flutter/material.dart';

class DemoCustomSingleChildLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new CustomSingleChildLayout(
        child: new Container(
          color: Colors.teal,
          width: 150.0,
          height: 150.0,
        ),
        delegate: new MyDelegate(),
    );
  }
}

class MyDelegate extends SingleChildLayoutDelegate {


  @override
  bool shouldRelayout(SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}