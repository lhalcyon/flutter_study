import 'package:flutter/material.dart';

class DemoCenter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 300.0,
      height: 300.0,
      color: Colors.grey,
      child: new Center(
        widthFactor: 1.0,
        // 设置Center Widget 的宽为child widget的宽度倍数 . eg: 1.0 代表同子控件大小
        heightFactor: 1.0,
        // 同上 , 作用于高
        child: new Container(
          child: const Text('Center Words'),
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}