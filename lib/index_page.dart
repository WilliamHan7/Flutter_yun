import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'simulation/simulation_page.dart';
import 'mycenter/start_login.dart';

class IndexPage extends StatefulWidget {
  IndexPage({
    Key key
    }) : super(key: key);
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.format_list_bulleted),
      title: Text('模拟测试')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('个人中心')
    ),
  ];
 
  final List tabBodies = [
    HomePage(),
    SimulationPage(),
    StartLogin(),
    //CheckboxDemo(),
  ];
  int currentIndex = 0;
  var currentPage ;
  var islogin = false;
  @override
  void initState(){
    currentPage = tabBodies[currentIndex];
    super.initState();
  }
  Widget build(BuildContext context) {
     return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items:bottomTabs,
        onTap: (index){
          setState(() {
           currentIndex=index;
           currentPage =tabBodies[currentIndex]; 
          });
        },
      ),
      body: currentPage,
    );
  }
}