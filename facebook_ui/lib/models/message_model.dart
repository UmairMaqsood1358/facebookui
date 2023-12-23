import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avator;
  final Icon status;
  MessageModel(
      {required this.name,
      required this.time,
      required this.avator,
      required this.status});

  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    color: Colors.green,
    size: 18,
  );
  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
      name: "Umair",
      time: '10:33',
      avator: 'images/user/u1.jpg',
      status: MessageModel.statusOnline),
  MessageModel(
      name: "Kashif",
      time: '09:17',
      avator: 'images/user/u2.jpg',
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Mahmood",
      time: '12:17',
      avator: 'images/user/u3.jpg',
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Raza",
      time: '09:40',
      avator: 'images/user/u4.jpg',
      status: MessageModel.statusOnline),
  MessageModel(
      name: "Murtaza",
      time: '07:41',
      avator: 'images/user/u5.jpg',
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Mubeen",
      time: '05:32',
      avator: 'images/user/u6.jpg',
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Razak",
      time: '04:49',
      avator: 'images/user/u7.jpg',
      status: MessageModel.statusOnline),
  MessageModel(
      name: "Kashif",
      time: '11:20',
      avator: 'images/user/u8.jpg',
      status: MessageModel.statusOffline),
  MessageModel(
      name: "Kashif",
      time: '11:59',
      avator: 'images/user/u9.jpg',
      status: MessageModel.statusOnline),
];
