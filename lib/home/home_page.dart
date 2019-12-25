
import 'package:flutter/material.dart';
import 'widget/tabBarDiy.dart';
import 'widget/course_list.dart';
import 'widget/globalSearch.dart';
import 'widget/swperDiy.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '首页',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GlobalSearch(),
                SwerDiy(),
                CourseItem(),
              ],
            ),
          ),
        ));
  }
}

    


