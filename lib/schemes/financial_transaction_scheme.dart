import 'package:caply/schemes/transaction_scheme.dart';

class FinancialTransactionScheme extends TransactionScheme {
  final int financialTransactionId;
  int categoryId;
  String description;
  String? syncStatus = 'syncPending';

  FinancialTransactionScheme({
    required super.transactionId,
    required super.type,
    required super.amount,
    required super.date,
    required super.currency,
    required this.financialTransactionId,
    required this.categoryId,
    required this.description,
    this.syncStatus,
  });
}
