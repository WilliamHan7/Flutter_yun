import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_button.dart';

class NotPage extends StatelessWidget {
  const NotPage({
    Key key,
    this.text,
    this.btntext,
  }) : super(key: key);
  final String text;
  final String btntext;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(
          0,
          110.0,
          0,
          20,
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/noicon.png',
              width: 154.0,
              height: 100,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey),
            ),
            Container(
              width: ScreenUtil().setWidth(220),
              child: MyButton(
                text: btntext,
                small: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
