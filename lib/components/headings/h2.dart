import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class H2 extends StatelessWidget {
  final String label;
  final bool? isContrast;

  const H2({super.key, required this.label, this.isContrast});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: isContrast == null || isContrast == false
            ? AppColors.textPrimary
            : AppColors.textContrast,
        fontSize: AppTextSizes.large,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
