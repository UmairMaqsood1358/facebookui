import 'package:facebook_ui/screens/friends.dart';
import 'package:facebook_ui/screens/home.dart';
import 'package:facebook_ui/screens/messages.dart';
import 'package:facebook_ui/screens/notifications.dart';
import 'package:facebook_ui/screens/shopping.dart';
import 'package:facebook_ui/screens/videos.dart';
import 'package:facebook_ui/widgets/home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart' as Badges;

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outline)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: Badges.Badge(
        position: Badges.BadgePosition.topEnd(top: -20, end: -5),
        badgeContent: Text(
          "3",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        child: Icon(Icons.notification_add_outlined),
      ),
    ),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];
  Future<bool> _onWillpop() async {
    print("on will pop");
    if (_tabcontroller?.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(microseconds: 200), () {
      print("Set Index");
      _tabcontroller?.index = 0;
    });
    print("Return");
    return _tabcontroller?.index == 0;
  }

  @override
  void initState() {
    _tabcontroller =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillpop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text("facebook",
              style: TextStyle(
                fontSize: 34,
                color: Colors.blue[700],
                fontFamily: 'klavika',
              )),
          actions: [
            Container(
              child: IconButton(
                onPressed: () {
                  print("Pressed Search");
                },
                icon: Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () {
                  print("Menu Pressed");
                  _scaffoldkey.currentState!.openEndDrawer();
                },
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabcontroller,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: MyDrawer(),
        ),
        body: TabBarView(controller: _tabcontroller, children: [
          HomePage(),
          FriendPage(),
          MessagePage(),
          NotificationPage(),
          VideoPage(),
          ShoppingPage(),
        ]),
      ),
    );
  }
}
