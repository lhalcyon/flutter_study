import 'package:flutter/material.dart';
import 'package:flutter_study/layout/single/demo_Intrinsic_height.dart';
import 'package:flutter_study/layout/single/demo_align.dart';
import 'package:flutter_study/layout/single/demo_aspect_ratio.dart';
import 'package:flutter_study/layout/single/demo_baseline.dart';
import 'package:flutter_study/layout/single/demo_center.dart';
import 'package:flutter_study/layout/single/demo_constrainedbox.dart';
import 'package:flutter_study/layout/single/demo_container.dart';
import 'package:flutter_study/layout/single/demo_customsinglechildlayout.dart';
import 'package:flutter_study/layout/single/demo_fittedbox.dart';
import 'package:flutter_study/layout/single/demo_fractionallysizedbox.dart';
import 'package:flutter_study/layout/single/demo_offstage.dart';
import 'package:flutter_study/layout/single/demo_overflowbox.dart';
import 'package:flutter_study/layout/single/demo_padding.dart';
import 'package:flutter_study/layout/single/demo_sizedbox.dart';
import 'package:flutter_study/layout/single/demo_sizedoverflowbox.dart';
import 'package:flutter_study/layout/single/demo_transform.dart';
import 'package:flutter_study/main.dart';

class MainLayoutSingle extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Layout Widget - Single'),
      ),
      body: new SingleLayoutPage(),
    );
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
    new PageEntry('Container Demo(重要)', new DemoContainer(),"container"),
    new PageEntry('Padding Demo', new DemoPadding(),null),
    new PageEntry('Center Demo(重要)', new DemoCenter(),null),
    new PageEntry('Align Demo', new DemoAlign(),null),
    new PageEntry('FittedBox Demo', new DemoFittedBox(),null),
    new PageEntry('AspectRatio Demo(重要)', new DemoAspectRatio(),null),
    new PageEntry('ConstrainedBox Demo', new DemoConstrainedBox(),null),
    new PageEntry('Baseline Demo', new DemoBaseline(),null),
    new PageEntry('FractionallySizedBox Demo', new DemoFractionallySizedBox(),null),
    new PageEntry('IntrinsicHeight Demo', new DemoIntrinsicHeight(),null),
    new PageEntry('IntrinsicWidth Demo', new DemoIntrinsicHeight(),null),
    new PageEntry('OffState Demo', new DemoOffStage(),null),
    new PageEntry('OverflowBox Demo', new DemoOverflowBox(),null),
    new PageEntry('SizedBox Demo', new DemoSizedBox(),null),
    new PageEntry('SizedOverflowBox Demo', new DemoSizedOverflowBox(),null),
    new PageEntry('Transform Demo', new DemoTransform(),null),
    new PageEntry('CustomSingleChildLayout Demo', new DemoCustomSingleChildLayout(),null),
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

  _showMessage(BuildContext context, String desc) {
    showModalBottomSheet<Null>(context: context, builder: (BuildContext context) {
      return new Container(
          child: new Padding(
              padding: const EdgeInsets.all(32.0),
              child: new Text('This is the modal bottom sheet. Click anywhere to dismiss.',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 24.0
                  )
              )
          )
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _buildDemoPage()
    );
  }




}