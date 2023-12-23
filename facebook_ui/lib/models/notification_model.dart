class NotificationModel {
  final String name;
  final String avator;
  final String time;
  final String descripation;

  NotificationModel(
      {required this.name,
      required this.avator,
      required this.time,
      required this.descripation});
}

List<NotificationModel> notificationData = [
  NotificationModel(
      name: "Umair",
      avator: 'images/user/u9.jpg',
      time: '10 mints ago',
      descripation: 'send friend request'),
  NotificationModel(
      name: "Khalid Mehmood",
      avator: 'images/user/u5.jpg',
      time: '50 mints ago',
      descripation: 'like your profile picture'),
  NotificationModel(
      name: "Mubeen",
      avator: 'images/user/u7.jpg',
      time: '1 hour ago',
      descripation: 'accept friend request'),
  NotificationModel(
      name: "Nawaz Ali",
      avator: 'images/user/u3.jpg',
      time: '02 hour ago',
      descripation: 'send friend request'),
];
