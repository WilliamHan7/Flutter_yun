import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/click_item.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AboutMePage extends StatefulWidget {
  AboutMePage({Key key}) : super(key: key);

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  var _styles = [
    FlutterLogoStyle.stacked,
    FlutterLogoStyle.markOnly,
    FlutterLogoStyle.horizontal
  ];
  var _colors = [
    Colors.red,
    Colors.green,
    Colors.brown,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.amber
  ];
  var _curves = [
    Curves.ease,
    Curves.easeIn,
    Curves.easeInOutCubic,
    Curves.easeInOut,
    Curves.easeInQuad,
    Curves.easeInCirc,
    Curves.easeInBack,
    Curves.easeInOutExpo,
    Curves.easeInToLinear,
    Curves.easeOutExpo,
    Curves.easeInOutSine,
    Curves.easeOutSine,
  ];

  // 取随机颜色
  Color _randomColor() {
    var red = Random.secure().nextInt(255);
    var greed = Random.secure().nextInt(255);
    var blue = Random.secure().nextInt(255);
    return Color.fromARGB(255, red, greed, blue);
  }

  Timer _countdownTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // 2s定时器
      _countdownTimer = Timer.periodic(Duration(seconds: 2), (timer) {
        // https://www.jianshu.com/p/e4106b829bff
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 32.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '关于我们',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0,),
          FlutterLogo(
            size: 100.0,
            colors: _colors[Random.secure().nextInt(7)],
            textColor: _randomColor(),
            style: _styles[Random.secure().nextInt(3)],
            curve: _curves[Random.secure().nextInt(12)],
          ),
          ClickItem(
              title: "Github",
              content: "Go Star",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MygitHub();
                }));
              }),
          ClickItem(
              title: "作者",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Myblog();
                }));
              }),
        ],
      ),
    );
  }
}

//我的博客
class Myblog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 32.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '作者博客',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      url: 'https://williamhan7.github.io',
    );
  }
}

//Github
class MygitHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 32.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '作者博客',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      url: 'https://github.com/WilliamHan7/WilliamHan7.github.io',
    );
  }
}
