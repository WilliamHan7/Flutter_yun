import 'package:flutter/material.dart';
//import '../../util/toast.dart';
import '../../widgets/my_button.dart';

class PayWay extends StatelessWidget {
  const PayWay({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.grey[300],
                        width: 0.5,
                        style: BorderStyle.solid)),
              ),
              padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
              child: Text(
                '确认支付',
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              width: 50.0,
              height: 50.0,
              top: 0,
              right: 0,
              child: InkWell(
                onTap: ()=> Navigator.pop(context),
                child: Icon(Icons.close),
              )
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "合计",
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              '￥',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "18.00",
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        PayCheckBox(),
      ],
    );
  }
}

//支付选择微信&支付宝
class PayCheckBox extends StatefulWidget {
  PayCheckBox({Key key}) : super(key: key);

  @override
  _PayCheckBoxState createState() => _PayCheckBoxState();
}

class _PayCheckBoxState extends State<PayCheckBox> {
  int _radioGroupA = 0;
  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey[300],
                      width: 0.5,
                      style: BorderStyle.solid)),
            ),
            child: RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text(
                '微信支付',
                style: TextStyle(color: Colors.black),
              ),
              selected: _radioGroupA == 0,
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: Image.asset(
                'images/wechartpay.png',
                width: 28.0,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey[300],
                      width: 0.5,
                      style: BorderStyle.solid)),
            ),
            child: RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text(
                '支付宝支付',
                style: TextStyle(color: Colors.black),
              ),
              selected: _radioGroupA == 1,
              controlAffinity: ListTileControlAffinity.trailing,
              secondary: Image.asset(
                'images/alipay.png',
                width: 28.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
            child: MyButton(
              red: true,
              onPressed: () {
                //Toast.show("选择分类: ${_radioGroupA}");
                Navigator.pop(context,_radioGroupA);
              },
              text: '立即支付',
            ),
          )
        ],
      ),
    );
  }
}
