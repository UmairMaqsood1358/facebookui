import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback ontap;
  final String images;
  final String userName;

  StoryModel(
      {required this.ontap, required this.images, required this.userName});
}

List<StoryModel> storyData = [
  StoryModel(
    ontap: () => print("Umair picture Clicked"),
    images: 'images/story/s1.jpg',
    userName: "Umair",
  ),
  StoryModel(
    ontap: () => print("Fiza picture Clicked"),
    images: 'images/story/s2.jpg',
    userName: "Fiza",
  ),
  StoryModel(
    ontap: () => print("User picture Clicked"),
    images: 'images/story/s3.jpg',
    userName: "User",
  ),
  StoryModel(
    ontap: () => print("Fahad picture Clicked"),
    images: 'images/story/s4.jpg',
    userName: "Fahad",
  ),
  StoryModel(
    ontap: () => print("Mubeen picture Clicked"),
    images: 'images/story/s5.jpg',
    userName: "Mubeen",
  ),
  StoryModel(
    ontap: () => print("Nawaz & Sana picture Clicked"),
    images: 'images/story/s1.jpg',
    userName: "Nawaz & Sana",
  ),
];
