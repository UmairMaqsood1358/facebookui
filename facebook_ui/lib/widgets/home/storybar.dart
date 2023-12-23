import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class StoryBarPage extends StatelessWidget {
  const StoryBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 255,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print("Add new Story"),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 170,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage('images/user/u0.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add to Story",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 45,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_rounded),
                      iconSize: 45.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            for (var i = 0; i < storyData.length; i++) ...[
              Container(
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: storyData[i].ontap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(storyData[i].images),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        storyData[i].userName,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
