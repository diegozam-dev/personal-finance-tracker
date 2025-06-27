abstract class TransactionModel {
  final int transactionId;
  final int userId;
  String type; // -> Expense - Income - Goal
  double amount;
  DateTime date;
  String currency; // -> USD - EUR
  bool isDeleted;

  TransactionModel({
    required this.transactionId,
    required this.userId,
    required this.type,
    required this.amount,
    required this.date,
    required this.currency,
    this.isDeleted = false,
  });
}
