import 'package:caply/schemes/user_scheme.dart';

class NotificationScheme {
  final int notificationId;
  UserScheme user;
  String title;
  String? description;
  String state;
  String syncStatus = 'false';

  NotificationScheme({
    required this.notificationId,
    required this.user,
    required this.title,
    this.description,
    required this.state,
  });
}
