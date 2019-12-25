import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  Ok,
  Cancel
}

 class AlertDialogDemo extends StatefulWidget {
 
   @override
   _AlertDialogDemoState createState() => _AlertDialogDemoState();
 }
 
 class _AlertDialogDemoState extends State<AlertDialogDemo> {
   @override
   Widget build(BuildContext context) {
     return AlertDialog(
       title: Text('AlertDialog'),
       content: Text('Are you sure adout this?'),
       actions: <Widget>[
         FlatButton(
           child: Text('取消'),
           onPressed: (){
             Navigator.pop(context, Action.Cancel);
           },
         ),
         FlatButton(
           child: Text('确认'),
           onPressed: (){
             Navigator.pop(context, Action.Ok);
           },
         )
       ],
     );
   }
 }