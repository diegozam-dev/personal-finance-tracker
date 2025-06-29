import 'package:caply/utils/transaction_types.dart';

abstract class TransactionModel {
  final int transactionId;
  final int userId;
  TransactionTypes type; // -> Expense - Income - Goal
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
