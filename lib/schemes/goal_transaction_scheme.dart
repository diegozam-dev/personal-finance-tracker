import 'package:caply/schemes/transaction_scheme.dart';

class GoalTransactionScheme extends TransactionScheme {
  final int goalId;
  double currentProgress;
  String? syncStatus = 'syncPending';

  GoalTransactionScheme({
    required super.transactionId,
    required super.type,
    required super.amount,
    required super.date,
    required super.currency,
    required this.goalId,
    required this.currentProgress,
    this.syncStatus,
  });
}
