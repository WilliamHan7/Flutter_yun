import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({
    Key key,
    this.onTap,
    @required this.leadingicon,
    @required this.title,
    this.maxLines: 1,
    }) : super(key: key);
    final GestureTapCallback onTap;
    final AssetImage leadingicon;
    final String title;
    final int maxLines;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: double.infinity,
        child: ListTile(
          title: Text(title),
          leading: Image(
            image: leadingicon,
            width: maxLines == 1 ? 25.0 : 55.0,
            fit: BoxFit.fill,
          ),
          trailing: Image(
            image: AssetImage('images/mycenter/right_icon.png'),           
            width: 8.0,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}