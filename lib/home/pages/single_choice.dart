/// @Author: HAN
/// @Date: 2019-12-13 14:38:01
/// @Last Modified by: HAN

import 'package:flutter/material.dart';
import '../widget/my_questions.dart';

class SingleChoice extends StatefulWidget {
  SingleChoice({Key key}) : super(key: key);

  @override
  _SingleChoiceState createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {

  @override
  Widget build(BuildContext context) {
    Widget _updownBtn() {
      return Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 200.0,
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[],
              ),
            ),
            Container(
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
                border: Border.all(
                    color: Colors.blue, width: 0.5, style: BorderStyle.solid),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: Text(
                      '上一题',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  InkWell(
                    child: Text(
                      '上一题',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

//试题解析
    Widget _explain() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[50],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '试题详解',
              style: TextStyle(
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '解析:',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.blue,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('建筑工程、市政公用工程施工总承包企业资质等级均为特级、一级、二级、三级。')
          ],
        ),
      );
    }

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 0),
            child: Text(
              '单选题：1/9',
              style: TextStyle(
                  color: Color.fromRGBO(110, 110, 110, 1), fontSize: 16.0),
              textAlign: TextAlign.start,
            ),
          ),
          
          MyQuestion(),
          SizedBox(
            height: 20.0,
          ),
          _updownBtn(),
          SizedBox(
            height: 20.0,
          ),
          _explain(),
        ],
      ),
    );
  }
}
