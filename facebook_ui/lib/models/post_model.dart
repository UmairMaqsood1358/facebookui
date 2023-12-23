import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatorOnPressed;
  final String avatorImage;
  final String name;
  final String title;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel(
      {required this.avatorOnPressed,
      required this.avatorImage,
      required this.name,
      required this.title,
      required this.moreOnPressed,
      required this.postTitle,
      required this.postImage,
      required this.likeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<PostModel> postData = [
  PostModel(
      avatorOnPressed: () => print("Avator on Pressed"),
      avatorImage: 'images/user/u0.jpg',
      name: "Mehreen",
      title: "Just Now",
      moreOnPressed: () => print("More on Pressed"),
      postTitle: "This is my new profile picture",
      postImage: 'images/user/u0.jpg',
      likeOnPressed: () => print("Like Clicked"),
      commentOnPressed: () => print("Comment Clicked"),
      shareOnPressed: () => print("Share Clicked")),
  PostModel(
      avatorOnPressed: () => print("Avator on Pressed"),
      avatorImage: 'images/user/u1.jpg',
      name: "Farman",
      title: "47 mint ago",
      moreOnPressed: () => print("More on Pressed"),
      postTitle: "Friends Tell me How I am Look",
      postImage: 'images/user/u1.jpg',
      likeOnPressed: () => print("Like Clicked"),
      commentOnPressed: () => print("Comment Clicked"),
      shareOnPressed: () => print("Share Clicked")),
  PostModel(
      avatorOnPressed: () => print("Avator on Pressed"),
      avatorImage: 'images/user/u3.jpg',
      name: "Naveed",
      title: "1hour ago",
      moreOnPressed: () => print("More on Pressed"),
      postTitle: 'In publishing and graphic design, Lorem ipsum is a'
          'placeholder text commonly used to demonstrate the visual form of a '
          'document or a typeface without relying on meaningful content. Lorem '
          'ipsum may be'
          'used as a placeholder before final copy is available',
      postImage: 'images/user/u3.jpg',
      likeOnPressed: () => print("Like Clicked"),
      commentOnPressed: () => print("Comment Clicked"),
      shareOnPressed: () => print("Share Clicked")),
  PostModel(
      avatorOnPressed: () => print("Avator on Pressed"),
      avatorImage: 'images/user/u4.jpg',
      name: "Sharmeen",
      title: "20 mint ago",
      moreOnPressed: () => print("More on Pressed"),
      postTitle: "Lorem ipsum is placeholder text commonly used in the graphic,"
          "print, and publishing industries for previewing layouts and visual mockups.",
      postImage: 'images/user/u4.jpg',
      likeOnPressed: () => print("Like Clicked"),
      commentOnPressed: () => print("Comment Clicked"),
      shareOnPressed: () => print("Share Clicked")),
];
