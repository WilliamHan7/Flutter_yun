import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'index_page.dart';
import 'simulation/order_page.dart';
import 'home/practice_page.dart';
import 'mycenter/pages/aboutme.dart';
import 'mycenter/pages/register_page.dart';
import 'mycenter/pages/forgetpsd_page.dart';
import 'mycenter/mycenter_page.dart';
import 'mycenter/pages/change_psd_page.dart';
import 'mycenter/pages/edit_page.dart';
import 'home/answer_page.dart';
import 'mycenter/pages/test_record.dart';

import 'demo/flutter_tab_bar.dart';


void main() {
//  debugProfileBuildsEnabled = true;
//  debugPaintLayerBordersEnabled = true;
//  debugProfilePaintsEnabled = true;
//  debugRepaintRainbowEnabled = true;
  runApp(MyApp());
  // 透明状态栏
  // if (Platform.isAndroid) {
  //   SystemUiOverlayStyle systemUiOverlayStyle =
  //   SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    
  // }
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title:'八大员云学习',
        //debugShowCheckedModeBanner: false,
        
        routes: {
          '/order': (context) => OrderPage(),
          '/mycenter': (context) => MycenterPage(),
          '/practice': (context) => PracticePage(),
          '/about': (context) => AboutMePage(),
          '/register': (context) => RegisterPage(),
          '/forgetpsd': (context) => ForgetpsdPage(),
          '/changepsd': (context) => ChangepsdPage(),
          '/answer': (context) => AnswerPage(),
          '/edit' :(context) => EditPage(),
          '/test' :(context) => TestRecord(),
        },
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.white,elevation:1.0),
          primaryColor:Color.fromRGBO(86, 145, 231, 1.0),
          buttonColor:Color.fromRGBO(86, 145, 231, 1.0),
          //accentColor:Color.fromRGBO(246, 9, 20, 1)
        ),
        home:IndexPage()
      ),
    );
  }
}
 

