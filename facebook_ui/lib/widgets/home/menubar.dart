import 'package:flutter/material.dart';

class MenuBarPage extends StatelessWidget {
  const MenuBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.post_add_outlined),
              Text(
                "Text",
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
              )
            ],
          ),
        ),
        Container(
          height: 40.0,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.video_call, color: Colors.redAccent),
              Text(
                "Live Call",
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
              )
            ],
          ),
        ),
        Container(
          height: 40.0,
          child: VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.red),
              Text(
                "Location",
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
