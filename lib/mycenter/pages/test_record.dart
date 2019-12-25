import 'package:flutter/material.dart';
import '../../widgets/not_page.dart';

class TestRecord extends StatelessWidget {
  const TestRecord({Key key}) : super(key: key);

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
          '模拟测试记录',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: NotPage(
        text: "当前没有记录",
        btntext: "去购买商品",
      ),
    );
  }
}