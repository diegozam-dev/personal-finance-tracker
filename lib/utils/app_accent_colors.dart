import 'dart:ui';
import 'package:caply/utils/app_colors.dart';

List<Map<String, dynamic>> appAccentColors = [
  {'name': 'red', 'color': AppColors.accentRed},
  {'name': 'blue', 'color': AppColors.accentBlue},
  {'name': 'green', 'color': AppColors.accentGreen},
  {'name': 'orange', 'color': AppColors.accentOrange},
  {'name': 'purple', 'color': AppColors.accentPurple},
  {'name': 'yellow', 'color': AppColors.accentYellow},
];

Color getAccentColorByName(String name) {
  return Color(
    appAccentColors.firstWhere((color) => color['name'] == name)['color'].value,
  );
}
