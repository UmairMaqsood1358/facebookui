import 'package:facebook_ui/models/friends_model.dart';
import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Friends",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      onPressed: () {
                        print("Friend Button Pressed ");
                      },
                      icon: Icon(Icons.person),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.green,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        print("People Pressed");
                      },
                      icon: Icon(Icons.people),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.redAccent,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendModel.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(friendModel[i].avatorImage),
                  ),
                  title: Text(
                    friendModel[i].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Wrap(
                    spacing: 10,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("Friend Add Request Send");
                        },
                        child: Text("Add Friend"),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Removed");
                        },
                        child: Text("Remove"),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    print("Open Clicked User profile");
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
