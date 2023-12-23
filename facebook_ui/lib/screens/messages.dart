import 'package:facebook_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
                "Messages",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      onPressed: () {
                        print("Message Button");
                      },
                      icon: Icon(Icons.message_outlined),
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
                        print("Setting Button");
                      },
                      icon: Icon(Icons.settings_outlined),
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
            ],
          ),
        ),
        Divider(thickness: 1, color: Colors.black38),
        Expanded(
          child: ListView.builder(
            itemCount: messageData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(messageData[i].avator),
                  ),
                  title: Text(
                    messageData[i].name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(messageData[i].time),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: messageData[i].status,
                    iconSize: 20,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
