import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
//轮播图
class SwerDiy extends StatefulWidget {
  SwerDiy({Key key}) : super(key: key);

  @override
  _SwerDiyState createState() => _SwerDiyState();
}

class _SwerDiyState extends State<SwerDiy> {
 
  List<Map> imgList = [
    {"url": "http://117.122.208.199:10008/File/Image/Home/home5.png"},
    {"url": "http://117.122.208.199:10008/File/Image/Home/home6.png"},
    {"url": "http://117.122.208.199:10008/File/Image/Home/home8.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imgList[index]['url'],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
        autoplay:true
      ),
    );
  }
  
}