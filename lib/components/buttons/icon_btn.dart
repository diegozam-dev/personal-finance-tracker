import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final Function() onClick;
  final IconData icon;
  final bool? isContrast;

  const IconBtn({
    super.key,
    required this.onClick,
    required this.icon,
    this.isContrast,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 44,
      child: IconButton(
        onPressed: onClick,
        icon: Icon(icon, size: AppIconSizes.large),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            isContrast == null || isContrast == false
                ? AppColors.iconBtnDefault
                : AppColors.iconBtnContrast,
          ),
          foregroundColor: WidgetStatePropertyAll(
            isContrast == null || isContrast == false
                ? AppColors.iconBtnLabel
                : AppColors.iconBtnLabelContrast,
          ),
        ),
      ),
    );
  }
}
