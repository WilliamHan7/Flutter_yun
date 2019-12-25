import 'package:flutter/material.dart';

class ListNum extends StatelessWidget {
  const ListNum({
    Key key,
    this.itemcount,
    }) : super(key: key);
    final int itemcount;
    
  Widget _list(content, index) {
    return Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(219, 219, 219, 1),
        ),
        child: Center(
          child: Text(
            '${index + 1}',
            style: TextStyle(color: Color.fromRGBO(316, 316, 316, 1), fontSize: 18.0),
          ),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20.0, //水平子 Widget 之间间距
            mainAxisSpacing: 15.0, //垂直子 Widget 之间间距
            crossAxisCount: 6, //一行的 Widget 数量
          ),
      itemCount: itemcount,
      itemBuilder: _list,
    ),
    );
  }
}