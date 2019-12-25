import 'package:flutter/material.dart';
//搜索框
class GlobalSearch extends StatelessWidget {
  const GlobalSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
      child: Container(
        height: 40.0,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "请选择岗位",
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey[200],
                    width: 0.5,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.grey[200]))),
        ),
      ),
    );
  }
}