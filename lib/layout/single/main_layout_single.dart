import 'package:flutter/material.dart';
import 'package:vue_study/layout/single/demo_align.dart';
import 'package:vue_study/layout/single/demo_aspect_ratio.dart';
import 'package:vue_study/layout/single/demo_baseline.dart';
import 'package:vue_study/layout/single/demo_constrainedbox.dart';
import 'package:vue_study/layout/single/demo_container.dart';
import 'package:vue_study/layout/single/demo_fittedbox.dart';
import 'package:vue_study/layout/single/demo_fractionallysizedbox.dart';
import 'package:vue_study/layout/single/demo_padding.dart';
import 'package:vue_study/main.dart';
import 'package:vue_study/multi/demo_row.dart';

class MainLayoutSingle extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return new SingleLayoutPage();
  }
}

class SingleLayoutPage extends StatefulWidget {

  @override
  State createState() {
    return new SingleLayoutState();
  }
}

class SingleLayoutState extends State<SingleLayoutPage> {

  final _biggerFont = const TextStyle(fontSize: 18.0);

  final _demoPageList = <PageEntry>[
    new PageEntry('Container Demo', new DemoContainer()),
    new PageEntry('Padding Demo', new DemoPadding()),
    new PageEntry('Center Demo', null),
    new PageEntry('Align Demo', new DemoAlign()),
    new PageEntry('FittedBox Demo', new DemoFittedBox()),
    new PageEntry('AspectRatio Demo', new DemoAspectRatio()),
    new PageEntry('ConstrainedBox Demo', new DemoConstrainedBox()),
    new PageEntry('Baseline Demo', new DemoBaseline()),
    new PageEntry('FractionallySizedBox Demo', new DemoFractionallySizedBox()),
    new PageEntry('Row Demo', new DemoRow()),
  ];

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
                    title: new Text(demo.title)
                ),
                body: widget
            );
          })
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _buildDemoPage()
    );
  }
}