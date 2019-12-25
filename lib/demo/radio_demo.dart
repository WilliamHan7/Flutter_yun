import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGropA = 0;

  void _handleRadioValueChanged(int value){
    setState(() {
     _radioGropA = value; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('radiodemo'),
           elevation: 0.0,
         ),
         body: Container(
           padding: EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text('RadioGroupValue: $_radioGropA'),
               SizedBox(height: 32.0,),
               RadioListTile(
                 value: 0,
                 groupValue: _radioGropA,
                 onChanged: _handleRadioValueChanged,
                 title: Text('Options A'),
                 subtitle: Text('description'),
                 secondary: Icon(Icons.filter_1),
                 selected: _radioGropA == 0,
               ),
               RadioListTile(
                 value: 1,
                 groupValue: _radioGropA,
                 onChanged: _handleRadioValueChanged,
                 title: Text('Options A'),
                 subtitle: Text('description'),
                 secondary: Icon(Icons.filter_2),
                 selected: _radioGropA == 1,
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
                  ],
                )
             ],
           ),
         ),
       ),
    );
  }
}