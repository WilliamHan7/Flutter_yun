import 'package:flutter/material.dart';
import '../mode/post.dart';

class SimulationPage extends StatelessWidget {
  const SimulationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '模拟测试',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Lationlist(),
    );
  }
}

class Lationlist extends StatelessWidget {
  Widget _getListData(context, index) {
    return InkWell(
      child: Container(
        // child: ListTile(
        //   title: Text(posts[index].title),
        //   subtitle: Text(
        //     '18.00元/3次',
        //     style: TextStyle(color: Colors.red),
        //   ),
        //   trailing: Image.asset('images/go_pay.png'),
        //   onTap: () {
        //     Navigator.pushNamed(context, '/order');
        //   },
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(posts[index].title),
                  Text(
                    '18.00元/3次',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/go_pay.png',
                    width: 50.0,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey, width: 0.5, style: BorderStyle.solid)),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/order');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _getListData,
    );
  }
}
