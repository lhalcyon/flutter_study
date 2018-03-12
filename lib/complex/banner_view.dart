import 'package:flutter/material.dart';


class Banner {

  String title;

  String image;


}

class LHBannerView extends StatefulWidget {

  List<Banner> bannerList = <Banner>[];

  LHBannerView(this.bannerList);

  @override
  State createState() {
    return new _LHBannerState(bannerList);
  }
}

class _LHBannerState extends State<LHBannerView> {

  List<Banner> _bannerList = <Banner>[];

  _LHBannerState(this._bannerList);

  @override
  Widget build(BuildContext context) {
      return null;
  }
}