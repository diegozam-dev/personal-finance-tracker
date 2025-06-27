import 'package:caply/models/transaction_model.dart';

class GoalTransactionModel extends TransactionModel {
  final int goalId;

  GoalTransactionModel({
    required super.transactionId,
    required super.userId,
    required super.type,
    required super.amount,
    required super.date,
    required super.currency,
    required this.goalId,
  });
}
