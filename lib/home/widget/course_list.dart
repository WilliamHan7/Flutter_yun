import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../mode/post.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key key}) : super(key: key);
  Widget _bottomBox(context, index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "￥${posts[index].price}/${posts[index].day}天",
          style: TextStyle(color: Colors.red),
        ),
        Container(
          height: ScreenUtil().setHeight(45),
          width: ScreenUtil().setWidth(170),
          child: FlatButton(
            child: Text('立即购买',style: TextStyle(fontSize: 14.0),),
            textColor: Colors.white,
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {
              Navigator.pushNamed(context, '/order');
            },
          ),
        )
      ],
    );
  }

  Widget _courselist(context, index) {
    if (posts.length != 0) {
      List<Widget> listWidget = posts.map((post) {
        return Container(
          padding: EdgeInsets.all(10),
          width: ScreenUtil().setWidth(354),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              child: Container(
                width: double.infinity,
                height: ScreenUtil().setHeight(160),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.network(
                    post.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/practice');
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              post.title,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            _bottomBox(context, index)
          ],
        ),
        );
      }).toList();

      return Wrap(
        spacing: 2,
        children: listWidget,
      );
    } else {
      return Text(' ');
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: _courselist(context, 10),
    );
  }
}
