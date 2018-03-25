import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var imgUrl = "https://ws1.sinaimg.cn/large/006tNc79gy1fpa5bvsqskj3044048mx5.jpg";
    return new Container(
        padding: const EdgeInsets.all(16.0),  // 内边距
        color: new Color(0xFFF2F2F2),         // 背景色
        alignment: Alignment.center,          //子部件排列规则
        child: new Container(                 // 子部件
          width: 400.0,                           //宽
          height: 400.0,                          //高
          // color 与 decoration 互斥 .如需设置decoration 和 color , 可在decoration中设置color
          // color: Colors.blueGrey,
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Colors.blueGrey,
            border: new Border.all(
              color: Colors.blue,
              width: 8.0,
            ),
            image: new DecorationImage(image: new NetworkImage(imgUrl),fit: BoxFit.none)
          ),
//          transform: new Matrix4.rotationZ(0.2),
          child: new Text('Halcyon',style: const TextStyle(color: Colors.blue,fontSize: 24.0),),
        )

    );
  }
}