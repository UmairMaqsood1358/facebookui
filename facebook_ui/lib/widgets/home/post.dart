import 'package:facebook_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  onPressed: postData[i].avatorOnPressed,
                  icon: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(postData[i].avatorImage),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postData[i].name,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        spacing: 10,
                        children: [
                          Text(
                            postData[i].title,
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(Icons.public),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_outlined),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      postData[i].postTitle,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Image(
                    image: AssetImage(postData[i].postImage),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].likeOnPressed,
                      icon: Icon(Icons.thumb_up_alt_outlined),
                    ),
                    Text(
                      '12',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].moreOnPressed,
                      icon: Icon(Icons.message_outlined),
                    ),
                    Text(
                      '06',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: postData[i].shareOnPressed,
                      icon: Icon(Icons.share_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
