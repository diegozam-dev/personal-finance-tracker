import 'package:caply/schemes/user_scheme.dart';

class GoalScheme {
  final int goalId;
  UserScheme user;
  String name;
  double goalAmount;
  double savedAmount;
  String? imageUrl;
  String? icon;
  String? color;
  DateTime? targetDate;
  String state;
  String syncStatus = 'false';

  GoalScheme({
    required this.goalId,
    required this.user,
    required this.name,
    required this.goalAmount,
    required this.savedAmount,
    this.imageUrl,
    this.icon,
    this.color,
    required this.targetDate,
    required this.state,
  });
}
