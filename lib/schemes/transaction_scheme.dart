import 'package:caply/schemes/category_scheme.dart';

class TransactionScheme {
  final int id;
  String type;
  double amount;
  CategoryScheme category;
  String description;
  DateTime createdAt;

  TransactionScheme({
    required this.id,
    required this.type,
    required this.amount,
    required this.category,
    required this.description,
    required this.createdAt,
  });
}
