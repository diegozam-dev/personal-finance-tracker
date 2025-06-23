import 'package:caply/schemes/category_scheme.dart';
import 'package:caply/schemes/transaction_scheme.dart';

class FinancialTransactionScheme extends TransactionScheme {
  final int financialTransactionId;
  CategoryScheme category;
  String description;
  String syncStatus = 'false';

  FinancialTransactionScheme({
    required super.transactionId,
    required super.type,
    required super.amount,
    required super.date,
    required super.currency,
    required this.financialTransactionId,
    required this.category,
    required this.description,
  });
}
