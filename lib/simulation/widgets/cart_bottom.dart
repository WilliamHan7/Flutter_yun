import 'package:flutter/material.dart';
import 'pay.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartBottom extends StatefulWidget {
  CartBottom({
    Key key
    }) : super(key: key);
  @override
  _CartBottomState createState() => _CartBottomState();
}

class _CartBottomState extends State<CartBottom> {
  final _CartBottomScaffoldKey = GlobalKey<ScaffoldState>();
  bool _checkboxAll = false;
  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
               
              ),
            height: ScreenUtil().setHeight(700.0),
            child: PayWay(),
          );
        });
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    //去缴费
    Widget goButton() {
      return Container(
        width: ScreenUtil().setWidth(200),
        child: InkWell(
          onTap: _openModalBottomSheet,
          child: Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text(
              '去缴费',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
    }

//全选按钮
    Widget selectAllBtn() {
      return Container(
          child: Row(
        children: <Widget>[
          Checkbox(
            activeColor: Colors.red,
           value: _checkboxAll,
              onChanged: (value) {
                setState(() {
                  _checkboxAll = value;
                });
              },
          ),
          Text('全选')
        ],
      ));
    }

    Widget allPriceArea() {
      return Container(
        child: Row(
          children: <Widget>[
            Text('合计：'),
            Text(
              '174.00元',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
      );
    }

//取消按钮
    Widget cancelButton() {
      return Container(
        width: ScreenUtil().setWidth(200),
        padding: EdgeInsets.only(left: 10),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Text(
              '取消订单',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
          ),
        ),
      );
    }

    Widget doubleBottom() {
      return Container(
        height: ScreenUtil().setHeight(100),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        width: ScreenUtil().setWidth(400),
        child: Row(
          children: <Widget>[cancelButton(), goButton()],
        ),
      );
    }

    return Container(
        color: Colors.white,
        width: ScreenUtil().setWidth(750),
        height: ScreenUtil().setHeight(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[selectAllBtn(), allPriceArea(), doubleBottom()],
        ));
  }
}
