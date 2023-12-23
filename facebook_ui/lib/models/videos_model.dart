import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatorOnpressed;
  final String avatorImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel(
      {required this.avatorOnpressed,
      required this.avatorImage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.videoPostTitle,
      required this.videoPostLink,
      required this.likeOnPressed,
      required this.commentOnPressed,
      required this.shareOnPressed});
}

List<VideoModel> videoData = [
  VideoModel(
      avatorOnpressed: () => print("Avator Pressed"),
      avatorImage: 'images/user/u1.jpg',
      name: 'Kamran',
      time: 'Just Now',
      moreOnPressed: () => print("More Clicked"),
      videoPostTitle: 'In publishing and graphic design, Lorem ipsum is a'
          'placeholder text commonly used to demonstrate'
          'the visual form of a document or a typeface without relying on meaningful content.',
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=9Rt9G7TFMgM&ab_channel=Mirza"),
      likeOnPressed: () => print("Like Pressed"),
      commentOnPressed: () => print("Comment Pressed"),
      shareOnPressed: () => print("Share Pressed")),
  VideoModel(
      avatorOnpressed: () => print("Avator Pressed"),
      avatorImage: 'images/user/u3.jpg',
      name: 'Salman',
      time: '1 hour ago',
      moreOnPressed: () => print("More Clicked"),
      videoPostTitle:
          'Lorem ipsum may be used as a placeholder before final copy is available',
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=AfJS1u-4qYU&ab_channel=Mirza"),
      likeOnPressed: () => print("Like Pressed"),
      commentOnPressed: () => print("Comment Pressed"),
      shareOnPressed: () => print("Share Pressed")),
  VideoModel(
      avatorOnpressed: () => print("Avator Pressed"),
      avatorImage: 'images/user/u4.jpg',
      name: 'Afzal Khan',
      time: '40 mints aog',
      moreOnPressed: () => print("More Clicked"),
      videoPostTitle:
          'Lorem Ipsum passages, and more recently with desktop publishing',
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=IrECTgWSizw&ab_channel=Mirza"),
      likeOnPressed: () => print("Like Pressed"),
      commentOnPressed: () => print("Comment Pressed"),
      shareOnPressed: () => print("Share Pressed")),
  VideoModel(
      avatorOnpressed: () => print("Avator Pressed"),
      avatorImage: 'images/user/u6.jpg',
      name: 'Mubeen',
      time: '2 hour ago',
      moreOnPressed: () => print("More Clicked"),
      videoPostTitle: 'There are many variations of passages '
          'of Lorem Ipsum available, but the majority have suffered alteration in some form, '
          'by injected humour',
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=Xaasj0yOIok&ab_channel=Mirza"),
      likeOnPressed: () => print("Like Pressed"),
      commentOnPressed: () => print("Comment Pressed"),
      shareOnPressed: () => print("Share Pressed")),
  VideoModel(
      avatorOnpressed: () => print("Avator Pressed"),
      avatorImage: 'images/user/u9.jpg',
      name: 'Ali Sultan',
      time: '3 hour aog',
      moreOnPressed: () => print("More Clicked"),
      videoPostTitle: 'In publishing and graphic design, Lorem ipsum is a'
          'placeholder text commonly used to demonstrate',
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=o02oOrSBVMc&ab_channel=GeekyShows"),
      likeOnPressed: () => print("Like Pressed"),
      commentOnPressed: () => print("Comment Pressed"),
      shareOnPressed: () => print("Share Pressed"))
];
