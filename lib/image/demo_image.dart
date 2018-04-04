import 'dart:io';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:path/path.dart' as path;

class DemoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Demo Image';
    var imgUrl = 'https://ws1.sinaimg.cn/large/006tNc79gy1fpa5bvsqskj3044048mx5.jpg';
    var imageAssets = 'assets/images/ic_link.png';
    var imageFromPackage = 'ali_connors.png';
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('Image.asset:'),
                      new Image.asset(
                        imageAssets,
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            ),
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('Image.network:'),
                      new Image.network(
                        imgUrl,
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            ),
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('FadeInImage:'),
                      new FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: imgUrl,
                        width: 150.0,
                        height: 150.0,
                        fadeInDuration: const Duration(milliseconds: 1200),
                        fadeOutDuration: const Duration(milliseconds: 1200),
                      )
                    ],
                  ),
                )
            ),
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('ImageProvider Asset:'),
                      new Image(
                        image: new AssetImage(imageAssets),
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            ),
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('ImageProvider Network:'),
                      new Image(
                        image: new NetworkImage(imgUrl),
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            ),
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('Image from package:'),
                      new Image(
                        image: new AssetImage(
                            imageFromPackage,
                            package: 'flutter_gallery_assets'
                        ),
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            ),
            new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Card(
                  child: new Row(
                    children: <Widget>[
                      const Text('Image.file:'),
                      new Image( //需要将图片地址修改为自己电脑上的图片地址
                        image: new FileImage(new File('/Users/ceyx/Downloads/cow.png')),
                        repeat: ImageRepeat.noRepeat,
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            ),
          ],
        ));
  }
}