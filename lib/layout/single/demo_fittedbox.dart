import 'package:flutter/material.dart';

class DemoFittedBox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.yellow,   // 黄色
      child: new FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.center,
        child: new Container(
          height: 100.0,
          width: 100.0,
          color: const Color(0x800000ff), // 50% 透明度 蓝色
        ),
      ),
    );
    // 最外层的Container是黄色的, 里层的Container为50%透明度蓝色,由于被FittedBox包裹,使之填充父Widget,于是最后呈现两色值综合的颜色.
  }
}