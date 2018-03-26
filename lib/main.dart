import 'package:flutter/material.dart';
import 'package:vue_study/drawer/drawer.dart';
import 'package:vue_study/layout/multi/main_layout_multi.dart';
import 'package:vue_study/layout/single/main_layout_single.dart';
import 'package:vue_study/route/routes.dart';
void main() => runApp(new DemoApp());

class DemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new DemoMain(),
      routes: <String, WidgetBuilder> {
        RoutePath.layoutSingle: (BuildContext context) => new MainLayoutSingle(),
        RoutePath.layoutMulti: (BuildContext context) => new MainLayoutMulti()
      },
    );
  }
}

class DemoMain extends StatefulWidget {

  @override
  State createState() {
    return new DemoMainState();
  }
}

class DemoMainState extends State<DemoMain> {

  String currentRoutPath = RoutePath.layoutSingle;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Title'),
      ),
      body: new SingleLayoutPage(),
      drawer: new Drawer(
        child: ,
      ),
    );
  }
}



class PageEntry {
  String title;

  Widget widget;

  PageEntry(this.title, this.widget);
}
