import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/not_page.dart';
import 'widgets/cart_bottom.dart';
import 'widgets/cart_item.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key key}) : super(key: key);
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '未支付'),
    Tab(text: '已支付'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
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
            '订单管理',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Material(
              color: Colors.grey[50],
              child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 3.0,
                  labelColor: Theme.of(context).primaryColor,
                  tabs: myTabs),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: <Widget>[
              TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CartItem();
                    },
                  ),

                  NotPage(
                    text: "暂无订单",
                    btntext: "去购买商品",
                  ),
                ],
              ),
              Positioned(
                width: ScreenUtil().setWidth(750),
                bottom: 0,
                left: 0,
                child: CartBottom(),
              )
            ],
          ),
        ));
  }
}
