import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String label;
  final bool? isContrast;

  const H1({super.key, required this.label, this.isContrast});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: isContrast == null || isContrast == false
            ? AppColors.textPrimary
            : AppColors.textContrast,
        fontSize: AppTextSizes.xl2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
