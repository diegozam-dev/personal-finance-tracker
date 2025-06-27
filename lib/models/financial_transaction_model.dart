import 'package:caply/models/tag_model.dart';
import 'package:caply/models/transaction_model.dart';

class FinancialTransactionModel extends TransactionModel {
  final int financialTransactionId;
  int categoryId;
  String description;
  final List<TagModel> tags;

  FinancialTransactionModel({
    required super.transactionId,
    required super.userId,
    required super.type,
    required super.amount,
    required super.date,
    required super.currency,
    required this.financialTransactionId,
    required this.categoryId,
    required this.description,
    required this.tags,
  });
}
