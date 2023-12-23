import 'package:facebook_ui/screens/friends.dart';
import 'package:facebook_ui/screens/messages.dart';
import 'package:facebook_ui/screens/shopping.dart';
import 'package:facebook_ui/screens/videos.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/user/u0.jpg'),
                  ),
                  title: Text(
                    "Mehreen",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("View Your Profile"),
                  onTap: () {},
                ),
                Divider(thickness: 1, color: Colors.black12),
                ListTile(
                  leading: Icon(Icons.coronavirus_outlined, color: Colors.red),
                  title: Text(
                    "Covid-19 Information Center",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Covied Informatio Button Pressed");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.message, color: Colors.green),
                  title: Text(
                    "Messages",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: MessagePage(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.group, color: Colors.blue),
                  title: Text(
                    "Groups",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Group Clicked");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag, color: Colors.blueAccent),
                  title: Text(
                    "Market Place",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: ShoppingPage(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.green),
                  title: Text(
                    "Friends",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: FriendPage(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.video_label, color: Colors.blue),
                  title: Text(
                    "Videos",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: VideoPage(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.pages, color: Colors.red),
                  title: Text(
                    "Pages",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Pages Button Clicked");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.grey),
                  title: Text(
                    "Settings",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Settings Button Clicked");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip, color: Colors.blueGrey),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Privacy Button Clicked");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.grey),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Help Button Clicked");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book, color: Colors.grey[700]),
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("About Button Clicked");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {
                    print("Logout Clicked");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
