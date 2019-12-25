import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              '贝雷贝雷贝雷', style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('hanqs@etlchina.net'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://resources.ninghao.org/images/wanghao.jpg'
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                  'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title:Text('messages',textAlign: TextAlign.right,),
            trailing: Icon(Icons.message,color: Colors.black12, size:22.0),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title:Text('favorite',textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite,color: Colors.black12, size:22.0),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title:Text('settings',textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings,color: Colors.black12, size:22.0),
            onTap: ()=> Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}