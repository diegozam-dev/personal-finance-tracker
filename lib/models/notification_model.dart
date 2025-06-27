class NotificationModel {
  final int notificationId;
  final int? userId;
  String title;
  String? description;
  String state; // -> Read - Unread

  NotificationModel({
    required this.notificationId,
    this.userId,
    required this.title,
    this.description,
    required this.state,
  });
}
