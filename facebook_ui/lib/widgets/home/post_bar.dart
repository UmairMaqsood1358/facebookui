import 'package:flutter/material.dart';

class PostBarPage extends StatelessWidget {
  const PostBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 20,
          onPressed: () {
            print("Button Pressed");
          },
          icon: CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('images/user/u0.jpg'),
          ),
        ),
        TextButton(
          onPressed: () {
            print("Text Button Pressed");
          },
          child: Text(
            "Whte is in Your mind ?",
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
        ),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {
                print("Photo cliked");
              },
              icon: Icon(Icons.photo_album_outlined),
            ),
            Text("Photo"),
          ],
        ),
      ],
    );
  }
}
