class CategoryModel {
  final int categoryId;
  final int? userId;
  String name;
  String type; // -> Exprense - Income
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
