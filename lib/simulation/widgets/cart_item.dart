import 'package:flutter/material.dart';
import '../../mode/post.dart';

class CartItem extends StatefulWidget {

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  bool _checkboxItemA = false;
  final double _price = 70.0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(
                color: Colors.grey[300], width: 0.5, style: BorderStyle.solid)),
      ),
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: <Widget>[
          _cartCheckBt(),
          _cartImage(),
          _cartGoodsName()
        ],
      ),
    );
  }
//多选按钮
  Widget _cartCheckBt() {
    return Container(
      child: Checkbox(
        activeColor: Colors.red,
        value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
      ),
    );
  }

  //商品图片
  Widget _cartImage() {
    return Container(
      width: 100,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image.network(
          posts[1].imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //商品名称
  Widget _cartGoodsName() {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('市政工程施工员', style: TextStyle(color: Colors.black)),
          Text(
            '学习类型：模拟测试',
            style: TextStyle(color: Colors.grey[800], fontSize: 12.0),
          ),
          Text(
            '时间：2019-12-04',
            style: TextStyle(color: Colors.grey[800], fontSize: 12.0),
          ),
          Text(
            '￥${_price}',
            style: TextStyle(color: Colors.red, fontSize: 14.0),
          )
        ],
      ),
    );
  }
}

