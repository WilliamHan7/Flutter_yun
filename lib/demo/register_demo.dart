import 'package:flutter/material.dart';

class RegisterDemo extends StatefulWidget {
  @override
  _RegisterDemoState createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Container(
        child: _buildBody(),
      ),
    );
  }
}

_buildBody() {
  return Padding(
    padding: EdgeInsets.only(top: 20.0, right: 40.0, left: 40.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 32.0,
        ),
        const Text(
          "注册",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.perm_identity),
              hintText: "请输入手机号码",
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey[200],
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.blue))),
        ),
        SizedBox(
          height: 32.0,
        ),
        TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.verified_user),
              hintText: "短信验证码",
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              suffix:Text(
                '获取验证码'
              ),
              suffixStyle: TextStyle(color: Colors.blue),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey[200],
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.blue))),
        ),
        SizedBox(
          height: 32.0,
        ),
        TextField(
          obscureText:true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "请输入密码",
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              suffixStyle: TextStyle(color: Colors.blue),
              
              suffixIcon:Icon(Icons.visibility_off),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey[200],
                    width: 1,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(color: Colors.blue))),
        ),
        
        SizedBox(
          height: 32.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Padding(
                  padding: EdgeInsets.only(top: 11.0,bottom: 11.0),
                  child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white,fontSize: 16.0),
                ),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                onPressed: () {},
              ),
            )
          ],
        )
      ],
    ),
  );
}
