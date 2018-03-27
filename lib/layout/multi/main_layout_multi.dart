import 'package:flutter/material.dart';

class MainLayoutMulti extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Layout Widget - Multi'),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: const Text('Multi'),
      ),
    );
  }
}