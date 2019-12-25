import 'package:flutter/material.dart';

class MyQuestion extends StatefulWidget {
  MyQuestion({
    Key key,
    this.questiontitle,
    }) : super(key: key);
    final String questiontitle;
  @override
  _MyQuestionState createState() => _MyQuestionState();
}

class _MyQuestionState extends State<MyQuestion> {
  int _radioGroup;
  List<String> answerlist = ['A.特级', 'B.二级', 'C.三级', 'D.四级'];
  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroup = value;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Container(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 0),
            child: Text(
              '一、下列不属于建筑工程、市政公用工程总承包资质等级的是（）',
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1), fontSize: 16.0),
            ),
          ),
          Container(
            height: 35.0,
            child: RadioListTile(
              value: 0,
              groupValue: _radioGroup,
              onChanged: _handleRadioValueChanged,
              activeColor: Color.fromRGBO(229, 25, 55, 1),
              title: Text(
                'A.特级',
                style: TextStyle(
                    color: Color.fromRGBO(102, 102, 102, 1), fontSize: 16.0),
              ),
            ),
          ),
         ],
       ),
    );
  }
}