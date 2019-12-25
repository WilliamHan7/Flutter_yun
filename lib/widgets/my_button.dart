import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
    this.text:"",
    this.small:false,
    this.red:false,
    @required this.onPressed,
    }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final bool small;
  final bool red;


  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return FlatButton(
      onPressed: onPressed,
      textColor: Colors.white,
      color: !red ? Theme.of(context).buttonColor: Color.fromRGBO(246, 9, 20, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: !small ? ScreenUtil().setHeight(75) : ScreenUtil().setHeight(40),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(text,style: TextStyle(fontSize: 15.0),),
          )
        ],
      ),
    );
  }
}