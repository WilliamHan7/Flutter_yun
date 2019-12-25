import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  TabController mController;
  final List<Tab> tabList = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
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
        title: Text("首页"),
        backgroundColor: Color(0xffd43d3d),
      ),
      
      body: Column(
        children: <Widget>[
          Container(
            color: new Color(0xfff4f5f6),
            height: 38.0,
            child: TabBar(
              controller: mController,
              labelColor: Colors.red,
              unselectedLabelColor: Color(0xff666666),
              labelStyle: TextStyle(fontSize: 16.0),
              tabs: tabList
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: <Widget>[
                Text('left'),
                Text('right')
              ],
            ),
          )
        ],
      ),
    );
  }
}
