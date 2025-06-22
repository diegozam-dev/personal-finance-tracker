class TransactionScheme {
  final int id;
  String type;
  double amount;
  DateTime date;
  String currency = 'USD'; // EUR -> Euro
  bool isDeleted = false;
  String description;

  TransactionScheme({
    required this.id,
    required this.type,
    required this.amount,
    required this.date,
    required this.description,
  });
}
