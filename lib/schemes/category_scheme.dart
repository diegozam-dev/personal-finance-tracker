class CategoryScheme {
  final int categoryId;
  final int? userId;
  String name;
  String type;
  String icon;
  String color;

  CategoryScheme({
    required this.categoryId,
    this.userId,
    required this.type,
    required this.name,
    required this.icon,
    required this.color,
  });
}
