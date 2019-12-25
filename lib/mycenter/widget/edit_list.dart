import 'package:flutter/material.dart';

class EditList extends StatelessWidget {
  const EditList({
    Key key,
    this.text,
    this.textedit,
    this.portrait = false,
    }) : super(key: key);
    final String text;
    final String textedit;
    final bool portrait;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
       border: Border(
            bottom: BorderSide(
                color: Colors.grey, width: 0.5, style: BorderStyle.solid)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text,style: TextStyle(fontSize: 16.0),),
          !portrait ? Text(
            textedit,
            style: TextStyle(
              color: Color.fromRGBO(178, 178, 178, 1),
              fontSize: 14.0
              ),
            ) : Image.asset('images/mycenter/portrait.png',height:45.0),
          
        ],
      ),
    );
  }
}