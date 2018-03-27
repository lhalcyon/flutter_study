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
      routes: <String, WidgetBuilder>{
        RoutePath.home: (BuildContext context) => new HomePage(),
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

  @override
  Widget build(BuildContext context) {
    final double systemTopPadding = MediaQuery.of(context).padding.top;
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Flutter Direction'),
      ),
      body: new HomePage(),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: const Text(''),
              decoration: new FlutterLogoDecoration(
                margin: new EdgeInsets.fromLTRB(12.0, 12.0 + systemTopPadding, 12.0, 12.0),
                style:  FlutterLogoStyle.horizontal,
                lightColor: Colors.lightBlue.shade400,
                darkColor: Colors.blue.shade900,
                textColor: const Color(0xFF9E9E9E),
              ),
            ),
            new ListTile(
                title: const Text('Layout - Single Child'),
                onTap: () {
                  Navigator.of(context).pop(); // Dismiss the drawer.
                  _pushPage(context, new RouteEntry(
                      'Layout - Single Child', RoutePath.layoutSingle));
                }
            ),
            const Divider(),
            new ListTile(
                title: const Text('Layout - Multi Child'),
                onTap: () {
                  Navigator.of(context).pop(); // Dismiss the drawer.
                  _pushPage(context, new RouteEntry(
                      'Layout - Multi Child', RoutePath.layoutMulti));
                }
            ),
          ],
        ),
      ),
    );
  }

  _pushPage(BuildContext context, RouteEntry entry) {
    var routePath = entry.routePath;
    if (routePath != null) {
      Navigator.of(context).pushNamed(routePath);
    }
  }

}


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: const Text('home'),
      alignment: Alignment.center,
    );
  }
}

class RouteEntry {

  String title;

  String routePath;

  RouteEntry(this.title, this.routePath);


}


class PageEntry {
  String title;

  Widget widget;

  PageEntry(this.title, this.widget);
}
