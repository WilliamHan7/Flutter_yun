
import 'package:flutter/material.dart'; 

class TabBarDiy extends StatefulWidget {
 

  @override
  _TabBarDiyState createState() => _TabBarDiyState();
}

class _TabBarDiyState extends State<TabBarDiy>  with SingleTickerProviderStateMixin{
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
    return Column(
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
                tabs: tabList
              ),
          ),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: <Widget>[Text('left'), Text('right')],
            ),
          )
        ],
      );
  }
}