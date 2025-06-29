import 'package:caply/utils/goal_states.dart';

class GoalModel {
  final int goalId;
  final int userId;
  String name;
  double goalAmount;
  double savedAmount;
  String? imageUrl;
  String? icon;
  String? color;
  DateTime? targetDate;
  GoalStates state;

  GoalModel({
    required this.goalId,
    required this.userId,
    required this.name,
    required this.goalAmount,
    required this.savedAmount,
    this.imageUrl,
    this.icon,
    this.color,
    this.targetDate,
    required this.state,
  });
}
