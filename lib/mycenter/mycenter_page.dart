import 'package:flutter/material.dart';
import '../widgets/click_list.dart';

class MycenterPage extends StatelessWidget {
  const MycenterPage({
    Key key,
    this.username = "HAN",
    }) : super(key: key);
    final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Container(
          decoration:  BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 55.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/portrait.png"),
                title: username,
                maxLines: 2,
                onTap: () {
                  Navigator.pushNamed(context, '/edit');
                },
              ),
              SizedBox(
                height: 15.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                  ),
                ),
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/collect.png"),
                title: "收藏试题",
                maxLines: 1,
                onTap: () {
                  print('22');
                },
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/mistakes.png"),
                title: "错题练习",
                maxLines: 1,
                onTap: () {
                  print('22');
                },
              ),
              SizedBox(
                height: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                  ),
                ),
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/simulate.png"),
                title: "模拟测试记录",
                maxLines: 1,
                onTap: () {
                  Navigator.pushNamed(context, '/test');
                },
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/shop.png"),
                title: "我的订单",
                maxLines: 1,
                onTap: () {
                  Navigator.pushNamed(context, '/order');
                },
              ),
              SizedBox(
                height: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                  ),
                ),
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/psd.png"),
                title: "密码",
                maxLines: 1,
                onTap: () {
                  Navigator.pushNamed(context, '/changepsd');
                },
              ),
              MyList(
                leadingicon: AssetImage("images/mycenter/about.png"),
                title: "关于我们",
                maxLines: 1,
                onTap: () {
                 Navigator.pushNamed(context, '/about');
                },
              ),
              SizedBox(
                height: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
                width: double.infinity,
                height: 60.0,
                child:FlatButton(
                  onPressed: (){print('退出登录');},
                  child: Text('退出登录'),
                  textColor: Colors.white,
                  color: Theme.of(context).buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ) ,
              )
            ],
          ),
        ));
  }
}

