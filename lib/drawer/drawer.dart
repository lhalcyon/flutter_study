import 'package:flutter/material.dart';
import 'package:vue_study/layout/single/main_layout_single.dart';
import 'package:vue_study/main.dart';


class DemoDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final List<Widget> allDrawerItems = <Widget>[
      new Container(
        height: 160.0,
        alignment: Alignment.center,
        child: new Text(
            'Demo Category',
             style: new TextStyle(
                color: Colors.blue,
                fontSize: 24.0
            )
        ),
      ),
      const Divider(),
      new ListTile(
        title: const Text('Layout - Single Child'),
        onTap: (){
          Navigator.of(context).pop(); // Dismiss the drawer.
          _pushPage(context,new PageEntry('Layout - Single Child', new MainLayoutSingle()));

        }
      ),
      const Divider(),
      new ListTile(
        title: const Text('Layout Widget - Multi Child'),
      )
    ];

    return new Drawer(
      child: new ListView(
        primary: false, children: allDrawerItems,
      ),
    );
  }

  _pushPage(BuildContext context,PageEntry entry){
    var widget = entry.widget;

    if (widget != null) {
      Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) {
            return new Scaffold(
                appBar: new AppBar(
                    title: new Text(entry.title)
                ),
                body: widget
            );
          })
      );
    }
  }
}