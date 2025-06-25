class NotificationScheme {
  final int notificationId;
  final int? userId;
  String title;
  String? description;
  String state;

  NotificationScheme({
    required this.notificationId,
    this.userId,
    required this.title,
    this.description,
    required this.state,
  });
}
