import 'package:flutter/material.dart';
import '../../widgets/my_textfield.dart';
import '../../widgets/my_button.dart';

class ForgetpsdPage extends StatefulWidget {

  @override
  _ForgetpsdPageState createState() => _ForgetpsdPageState();
}

class _ForgetpsdPageState extends State<ForgetpsdPage> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.grey[400],
              size: 32.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0),
        decoration: BoxDecoration(
            color: Colors.white,
          ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "忘记密码",
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
            key: const Key('number1'),
            controller: _nameController,
            maxLength: 11,
            keyboardType: TextInputType.number,
            leftIcon:Icons.verified_user,
            hintText: "请输入验证码",
          ),
          SizedBox(height: 30.0,),
          MyTextField(
            key: const Key('number'),
            controller: _nameController,
            maxLength: 11,
            leftIcon:Icons.https,
            keyboardType: TextInputType.number,
            hintText: "请输入新密码",
          ),
          SizedBox(height: 50.0,),
          MyButton(
            onPressed: ()=>print('注册'),
            text: '确认修改',
          )
        ],
      ),
      ),
    );
  }
}