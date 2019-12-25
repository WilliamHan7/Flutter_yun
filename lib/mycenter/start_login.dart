import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/eventBus.dart';
import 'login_page.dart';
import 'mycenter_page.dart';


class StartLogin extends StatefulWidget {
  StartLogin({Key key}) : super(key: key);

  @override
  _StartLoginState createState() => _StartLoginState();
}

class _StartLoginState extends State<StartLogin>{


    bool loginState = true;
    void initState(){
       super.initState();
      eventBus.on<MyEvent>().listen((MyEvent data) =>
         show(data.loginState)
      );
       
    }
     void show(bool val) {
      setState(() {
        loginState = val;
      });
    }

    @override
    Widget build(BuildContext context){
        ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);

        if(loginState){
            return MycenterPage();
        }else{
            return LoginPage();
        }
    }

    

}