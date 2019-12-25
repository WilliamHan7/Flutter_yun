import 'package:flutter/material.dart';
import '../widget/list_num.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DargBottom extends StatelessWidget {
  const DargBottom({Key key}) : super(key: key);
//显示出来的部分
  Widget _header() {
    return Container(
      height: 45.0,
      padding: EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset(
            'images/error.png',
            width: 18.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "1",
            style: TextStyle(
                color: Color.fromRGBO(55, 191, 109, 1), fontSize: 14.0),
          ),
          SizedBox(
            width: 30.0,
          ),
          Image.asset(
            'images/right.png',
            width: 18.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "1",
            style: TextStyle(
                color: Color.fromRGBO(229, 25, 55, 1), fontSize: 14.0),
          ),
          SizedBox(
            width: 30.0,
          ),
          Image.asset(
            'images/list.png',
            width: 18.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "7",
            style: TextStyle(fontSize: 14.0),
          ),
          Text(
            "/20",
            style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1), fontSize: 17.0),
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[_header(), SubjItem()],
      ),
    );
  }
}


//试题列表tab
class SubjItem extends StatefulWidget {
  SubjItem({Key key}) : super(key: key);

  @override
  _SubjItemState createState() => _SubjItemState();
}

class _SubjItemState extends State<SubjItem>
    with SingleTickerProviderStateMixin {
  TabController mController;
  final List<Tab> tabList = <Tab>[
    Tab(text: '单选题'),
    Tab(text: '多选题'),
    Tab(text: '判断题'),
  ];
  @override
  void initState() {
    super.initState();
    mController = TabController(
      length: tabList.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    mController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: ScreenUtil().setHeight(65.0),
            width: ScreenUtil().setWidth(450.0),
            child: TabBar(
                controller: mController,
                indicatorColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.black,
                indicatorWeight: 2.0,
                labelColor: Theme.of(context).primaryColor,
                tabs: tabList),
          ),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: <Widget>[
                ListNum(
                  itemcount: 8,
                ), 
                ListNum(
                  itemcount: 7,
                ),
                ListNum(
                  itemcount: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
