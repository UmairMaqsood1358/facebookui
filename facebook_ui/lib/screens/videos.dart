import 'package:facebook_ui/models/videos_model.dart';
import 'package:flutter/material.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitch = false;
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
                "Videos",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Tooltip(
                  message: 'Play video Automatically',
                  child: Switch(
                    value: isSwitch,
                    onChanged: (value) {
                      setState(() {
                        isSwitch = value;
                        print(isSwitch);
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1, color: Colors.black38),
        Expanded(
          child: ListView.builder(
            itemCount: videoData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      iconSize: 20,
                      onPressed: videoData[i].avatorOnpressed,
                      icon: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(videoData[i].avatorImage),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                videoData[i].name,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                videoData[i].time,
                                style: TextStyle(fontSize: 18),
                              ),
                              Icon(Icons.public),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: videoData[i].moreOnPressed,
                      icon: Icon(Icons.more_horiz_outlined),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
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
