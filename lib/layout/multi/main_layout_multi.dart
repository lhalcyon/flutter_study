import 'package:flutter/material.dart';
import 'package:flutter_study/layout/multi/demo_row.dart';
import 'package:flutter_study/main.dart';

class MainLayoutMulti extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Layout Widget - Multi'),
      ),
      body: new MultiLayoutPage(),
    );
  }
}

class MultiLayoutPage extends StatefulWidget {

  @override
  State createState() {
    return new MultiLayoutState();
  }
}

class MultiLayoutState extends State<MultiLayoutPage> {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  final _demoPageList = <PageEntry>[
    new PageEntry('Container Demo(重要)', new DemoRow(),null),


  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _buildDemoPage()
    );
  }

  Widget _buildDemoPage() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _demoPageList.length,
        itemBuilder: (context, i) {
          var demo = _demoPageList[i];
          return _buildRow(demo);
        }
    );
  }

  Widget _buildRow(PageEntry demo) {
    return new ListTile(
      title: new Text(
        demo.title,
        style: _biggerFont,
      ),
      onTap: () {
        _pushPage(demo);
      },
    );
  }
  void _pushPage(PageEntry demo) {
    var widget = demo.widget;

    if (widget != null) {
      Navigator.of(context).push(
          new MaterialPageRoute(builder: (context) {
            return new Scaffold(
                appBar: new AppBar(
                  title: new Text(demo.title),
                  actions: <Widget>[
//                      demo.desc != null ? new IconButton(icon: new Icon(Icons.message,color: Colors.white,), onPressed: _showMessage(context,demo.desc)) : new Text('')
                  ],
                ),
                body: widget
            );
          })
      );
    }
  }
}