import 'package:caply/utils/category_types.dart';

class CategoryModel {
  final int categoryId;
  final int? userId;
  String name;
  CategoryTypes type; // -> Exprense - Income
  String icon;
  String color;

  CategoryModel({
    required this.categoryId,
    this.userId,
    required this.type,
    required this.name,
    required this.icon,
    required this.color,
  });
}
