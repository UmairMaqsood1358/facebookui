import 'package:facebook_ui/widgets/home/menubar.dart';
import 'package:facebook_ui/widgets/home/post.dart';
import 'package:facebook_ui/widgets/home/post_bar.dart';
import 'package:facebook_ui/widgets/home/storybar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [
          PostBarPage(),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          MenuBarPage(),
          Divider(thickness: 1, color: Colors.black12),
          StoryBarPage(),
          Divider(thickness: 1, color: Colors.black12),
          Post(),
        ],
      ),
    );
  }
}
