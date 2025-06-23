abstract class TransactionScheme {
  final int transactionId;
  String type;
  double amount;
  DateTime date;
  String currency; // -> [USD, EUR]
  bool isDeleted = false;

  TransactionScheme({
    required this.transactionId,
    required this.type,
    required this.amount,
    required this.date,
    required this.currency,
  });
}
