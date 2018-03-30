import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class DemoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Demo Image';
    var imgUrl = 'https://ws1.sinaimg.cn/large/006tNc79gy1fpa5bvsqskj3044048mx5.jpg';
    var assetsImg = 'lib/resources/images/gender.png';


    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Column(
          children: <Widget>[
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
                      const Text('Image.asset:'),
                      new Image.asset(
                        assetsImg,
                        width: 150.0,
                        height: 150.0,
                      )
                    ],
                  ),
                )
            )
          ],
        ));
  }
}