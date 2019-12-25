import 'package:flutter/material.dart';
import '../widget/edit_list.dart';
class EditPage extends StatefulWidget {
  EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 32.0,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          '编辑资料',
          style: TextStyle(color: Colors.black,fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          EditList(
            portrait: true,
            textedit: '头像',
            text: '头像',
          ),
          EditList(
            text: '昵称',
            textedit: 'HAN',
          ),
          EditList(
            text: '身份证号',
            textedit: '请完善身份证号',
          ),
          EditList(
            text: '手机号',
            textedit: '17600246612',
          ),
          EditList(
            text: '邮箱',
            textedit: '请输入邮箱',
          )
        ],
      ),
    );
  }
}