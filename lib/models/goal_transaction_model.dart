import 'package:caply/models/transaction_model.dart';
import 'package:caply/utils/transaction_types.dart';

class GoalTransactionModel extends TransactionModel {
  final int goalId;

  GoalTransactionModel({
    required super.transactionId,
    required super.userId,
    super.type = TransactionTypes.goal,
    required super.amount,
    required super.date,
    required super.currency,
    required this.goalId,
  });
}
