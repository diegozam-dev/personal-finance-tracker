class GoalScheme {
  final int goalId;
  final int userId;
  String name;
  double goalAmount;
  double savedAmount;
  String? imageUrl;
  String? icon;
  String? color;
  DateTime? targetDate;
  String state;

  GoalScheme({
    required this.goalId,
    required this.userId,
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
