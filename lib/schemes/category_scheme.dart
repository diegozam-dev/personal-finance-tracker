import 'package:caply/schemes/user_scheme.dart';

class CategoryScheme {
  final int categoryId;
  final UserScheme? user;
  String name;
  String type;
  int icon;
  int color;
  String syncStatus = 'false';

  CategoryScheme({
    required this.categoryId,
    this.user,
    required this.type,
    required this.name,
    required this.icon,
    required this.color,
  });
}
