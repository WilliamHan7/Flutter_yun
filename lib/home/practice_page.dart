import 'package:flutter/material.dart';
import 'answer_page.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 32.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '日常练习',
            style: TextStyle(color: Colors.black,fontSize: 16.0),
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.white,
        ),
        body: ExpansionPanelDemo());
  }
}

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: '通用与基础知识',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Chapterlist(),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: '岗位和专业技能知识',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Chapterlist(),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionPanelList(
          expansionCallback: (int panelIndex, bool isExpanded) {
            setState(() {
              _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
            });
          },
          children: _expansionPanelItems.map((ExpansionPanelItem item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: item.isExpanded,
              body: item.body,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    item.headerText,
                    style: TextStyle(fontSize: 14.0),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Chapterlist extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      height: 40.0,
      child: ListTile(
        title: Text('一、建设法规'),
        trailing: Container(
          height: 30.0,
          width: 80.0,
          child: OutlineButton(
            child: Text('开始练习',style: TextStyle(fontSize: 12.0),),
            textColor: Theme.of(context).buttonColor,
            borderSide: BorderSide(
              color: Theme.of(context).buttonColor,
              
            ),
            shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
            onPressed: () {
              Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AnswerPage(title: '一、建设法规'))
                  );
             //Navigator.pushNamed(context, "/answer");
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: _getListData,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
