import 'package:flutter/material.dart';
import 'package:vue_study/drawer/drawer.dart';
import 'package:vue_study/layout/main_layout_single.dart';

void main() => runApp(new DemoApp());

class DemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new DemoMain(),
    );
  }
}

class DemoMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Title'),
      ),
      body: new Container(color: Colors.grey,),
      drawer: new DemoDrawer(),
    );
  }
}



class PageEntry {
  String title;

  Widget widget;

  PageEntry(this.title, this.widget);
}
