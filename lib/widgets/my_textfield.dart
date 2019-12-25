import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({
    Key key,
    @required this.controller,
    this.maxLength: 16,
    this.autoFocus: false,
    this.keyboardType: TextInputType.text,
    this.hintText: "",
    this.leftIcon,
    this.focusNode,
    this.isInputPwd: false,
  }) : super(key: key);
  final TextEditingController controller;
  final int maxLength;
  final bool autoFocus;
  final TextInputType keyboardType;
  final String hintText;
  final FocusNode focusNode;
  final bool isInputPwd;
  final IconData leftIcon;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool pwdShow = false; //密码是否显示明文
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          TextField(
            focusNode: widget.focusNode,
            maxLength: widget.maxLength,
            obscureText:
                widget.isInputPwd ? !true : false, //是否隐藏输入的文字，一般用在密码输入框中
            autofocus: widget.autoFocus, //是否自动获取焦点
            controller:
                widget.controller, //编辑框的控制器，跟文本框的交互一般都通过该属性完成，如果不创建的话默认会自动创建
            textInputAction: TextInputAction.done,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
                prefixIcon: Icon( widget.leftIcon?? Icons.perm_identity),
                // suffixIcon: IconButton(
                //   icon: Icon(pwdShow ? Icons.visibility_off : Icons.visibility),
                //   onPressed: () {
                //     setState(() {
                //       pwdShow = !pwdShow;
                //     });
                //   },
                // ),
                hintText: widget.hintText,
                counterText: "",
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey[200],
                      width: 0.5,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(color: Colors.blue))),
          )
        ],
      ),
    );
  }
}
