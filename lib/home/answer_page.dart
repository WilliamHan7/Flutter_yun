import 'package:flutter/material.dart';
import 'pages/single_choice.dart';

import 'pages/bottom_drag.dart';
import 'pages/drag_bottom_content.dart';
class AnswerPage extends StatefulWidget {
  AnswerPage({
    Key key,
    this.title,
    }) : super(key: key);
    final String title;
  @override
  _AnswerPageState createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage>
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 32.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      body: BottomDragWidget(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 38.0,
                  child: TabBar(
                      controller: mController,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Theme.of(context).primaryColor,
                      unselectedLabelColor: Colors.grey,
                      indicatorWeight: 3.0,
                      labelColor: Theme.of(context).primaryColor,
                      tabs: tabList),
                ),
                Expanded(
                  child: TabBarView(
                    controller: mController,
                    children: <Widget>[
                      SingleChoice(),
                      Text('right'),
                      Text('right2')
                    ],
                  ),
                ),
              ],
            ),
          ),
          dragContainer: DragContainer(
            drawer: Container(
              decoration: BoxDecoration(color: Colors.grey[50]),
              child: DargBottom(),
            ),
            defaultShowHeight: 45.0,
            height: 500.0,
          )),
    );
  }
}
