import 'package:flutter/material.dart';
import '../widgets/my_textfield.dart';
import '../widgets/my_button.dart';
import '../common/eventBus.dart';
class LoginPage extends StatefulWidget {
  LoginPage({
    Key key,
    this.islogin = false,
    }) : super(key: key);
    bool islogin;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //定义一个controller
  TextEditingController _nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
            "登录",
            style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0,),
            MyTextField(
            key: const Key('phone'),
            controller: _nameController,
            maxLength: 11,
            keyboardType: TextInputType.phone,
            hintText: "请输入手机号",
          ),
          SizedBox(height: 30.0,),
          MyTextField(
            key: const Key('number'),
            controller: _nameController,
            maxLength: 11,
            keyboardType: TextInputType.number,
            leftIcon:Icons.https,
            hintText: "请输入密码",
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            child: InkWell(
              child: Text('忘记密码？',textAlign: TextAlign.right,style: TextStyle(color: Colors.grey),),
              onTap: (){
                Navigator.pushNamed(context, '/forgetpsd');
              },
            )
          ),
          SizedBox(height: 30.0,),
          MyButton(
            onPressed: (){
            //  Navigator.pushNamed(context, '/mycenter');
            setState(() {
              widget.islogin  = true;
              print(widget.islogin);
            });
            },
            text: '登录',
            
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            child: InkWell(
              child: Text('新用户注册',textAlign: TextAlign.center,style: TextStyle(color: Theme.of(context).primaryColor),),
              onTap: (){
                 Navigator.pushNamed(context, '/register');
              },
            )
          ),
          Container(
            padding: EdgeInsets.only(top:40.0),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text('第三方登录',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
                SizedBox(height: 20.0,),
                Image.asset('images/mycenter/wechart.png',width: 50.0,)
              ],
            )
          )
          ],
        ),
      ),
    
    );
  }
}