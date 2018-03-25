import 'package:flutter/material.dart';


class DemoDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      final List<Widget> allDrawerItems = <Widget> [
          new ListTile(
            title: const Text('green'),
          ),
          const Divider(),
          new ListTile(
            title: const Text('red'),
          )
      ];

      return new Drawer(
        child: new ListView(
          primary: false,children: allDrawerItems,
        ),
      );
  }
}